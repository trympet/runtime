# Native AOT Developer Workflow

The Native AOT toolchain can be currently built for Linux (x64/arm64), macOS (x64) and Windows (x64/arm64).

## High Level Overview

Native AOT is a stripped down version of the CoreCLR runtime specialized for ahead of time compilation, with an accompanying ahead of time compiler.

The main components of the toolchain are:

* The AOT compiler (ILC/ILCompiler) built on a shared codebase with crossgen2 (src/coreclr/tools/aot). Where crossgen2 generates ReadyToRun modules that contain code and data structures for the CoreCLR runtime, ILC generates code and self-describing datastructures for a stripped down version of CoreCLR into object files. The object files use platform specific file formats (COFF with CodeView on Windows, ELF with DWARF on Linux, and Mach-O with DWARF on macOS).
* The stripped down CoreCLR runtime (NativeAOT specific files in src/coreclr/nativeaot/Runtime, the rest included from the src/coreclr). The stripped down runtime is built into a static library that is linked with object file generated by the AOT compiler using a platform-specific linker (link.exe on Windows, ld on Linux/macOS) to form a standalone executable.
* The bootstrapper library (src/coreclr/nativeaot/Bootstrap). This is a small native library that contains the actual native `main()` entrypoint and bootstraps the runtime and dispatches to managed code. Two flavors of the bootstrapper are built - one for executables, and another for dynamic libraries.
* The core libraries (src/coreclr/nativeaot): System.Private.CoreLib (corelib), System.Private.Reflection.* (the implementation of reflection), System.Private.TypeLoader (ability to load new types that were not generated statically).
* The dotnet integration (src/coreclr/nativeaot/BuildIntegration). This is a set of .targets/.props files that hook into `dotnet publish` to run the AOT compiler and execute the platform linker.

The AOT compiler typically takes the app, core libraries, and framework libraries as input. It then compiles the whole program into a single object file. Then the object file is linked to form a runnable executable. The executable is standalone (doesn't require a runtime), modulo any managed DllImports.

The executable looks like a native executable, in the sense that it can be debugged with native debuggers and have full-fidelity access to locals, and stepping information.

## Building

- [Install pre-requisites](../../README.md#build-requirements)
- Run `build[.cmd|.sh] clr+libs -rc [Debug|Release] -lc Release` from the repo root. This will restore nuget packages required for building and build the parts of the repo required for general CoreCLR development. Alternatively, instead of specifying `clr+libs`, you can specify `clr.alljits+clr.tools+clr.nativeaotlibs+clr.nativeaotruntime+libs` which is more targeted and builds faster.
- [NOT PORTED OVER YET] The build will place the toolchain packages at `artifacts\packages\[Debug|Release]\Shipping`. To publish your project using these packages:
   - [NOT PORTED OVER YET] Add the package directory to your `nuget.config` file. For example, replace `dotnet-experimental` line in `samples\HelloWorld\nuget.config` with `<add key="local" value="C:\runtimelab\artifacts\packages\Debug\Shipping" />`
   - [NOT PORTED OVER YET] Run `dotnet publish --packages pkg -r [win-x64|linux-x64|osx-64] -c [Debug|Release]` to publish your project. `--packages pkg` option restores the package into a local directory that is easy to cleanup once you are done. It avoids polluting the global nuget cache with your locally built dev package.
- The component that writes out object files (objwriter.dll/libobjwriter.so/libobjwriter.dylib) is based on LLVM and doesn't build in the runtime repo. It gets published as a NuGet package out of the dotnet/llvm-project repo (branch objwriter/12.x). If you're working on ObjWriter or bringing up a new platform that doesn't have ObjWriter packages yet, as additional pre-requiresites you need to build objwriter out of that repo and replace the file in the output.

## Visual Studio Solutions

The repository has a number of Visual Studio Solutions files (`*.sln`) that are useful for editing parts of the repository. Build the repo from command line first before building using the solution files. Remember to select the appropriate configuration that you built. By default, `build.cmd` builds Debug x64 and so `Debug` and `x64` must be selected in the solution build configuration drop downs.

- `src\coreclr\nativeaot\nativeaot.sln`. This solution is for the runtime libraries.
- `src\coreclr\tools\aot\ilc.sln`. This solution is for the compiler.

Typical workflow for working on the compiler:
- Open `ilc.sln` in Visual Studio
- Set "ILCompiler" project in solution explorer as your startup project
- Set Working directory in the project Debug options to your test project directory, e.g. `C:\runtimelab\samples\HelloWorld`
- Set Application arguments in the project Debug options to the response file that was generated by regular native aot publishing of your test project, e.g. `@obj\Release\net6.0\win-x64\native\HelloWorld.ilc.rsp`
- Build & run using **F5**

## Convenience Visual Studio "repro" project

Typical native AOT runtime developer scenario workflow is to native AOT compile a short piece of C# and run it. The repo contains helper projects that make debugging the AOT compiler and the runtime easier.

The workflow looks like this:

- Build the repo using the Building instructions above
- Open the ilc.sln solution described above. This solution contains the compiler, but also an unrelated project named "repro". This repro project is a small Hello World. You can place any piece of C# you would like to compile in it. Building the project will compile the source code into IL, but also generate a response file that is suitable to pass to the AOT compiler.
- Make sure you set the solution configuration in VS to the configuration you just built (e.g. x64 Debug).
- In the ILCompiler project properties, on the Debug tab, set the "Application arguments" to the generated response file. This will be a file such as "C:\runtime\artifacts\bin\repro\x64\Debug\compile-with-Release-libs.rsp". Prefix the path to the file with "@" to indicate this is a response file so that the "Application arguments" field looks like "@some\path\to\file.rsp".
- Build & run ILCompiler using **F5**. This will compile the repro project into an `.obj` file. You can debug the compiler and set breakpoints in it at this point.
- The last step is linking the object file into an executable so that we can launch the result of the AOT compilation.
- Open the src\coreclr\tools\aot\ILCompiler\reproNative\reproNative.vcxproj project in Visual Studio. This project is configured to pick up the `.obj` file we just compiled and link it with the rest of the runtime.
- Set the solution configuration to the tuple you've been using so far (e.g. x64 Debug)
- Build & run using **F5**. This will run the platform linker to link the obj file with the runtime and launch it. At this point you can debug the runtime and the various System.Private libraries.

## Running tests

If you haven't built the tests yet, run `src\tests\build.cmd nativeaot [Debug|Release] tree nativeaot` on Windows, or `src/tests/build.sh -nativeaot [Debug|Release] -tree:nativeaot` on Linux. This will build the smoke tests only - they usually suffice to ensure the runtime and compiler is in a workable shape. To build all Pri-0 tests, drop the `tree nativeaot` parameter. The `Debug`/`Release` parameter should match the build configuration you used to build the runtime.

To run all the tests that got built, run `src\tests\run.cmd runnativeaottests [Debug|Release]` on Windows, or `src/tests/run.sh --runnativeaottests [Debug|Release]` on Linux. The `Debug`/`Release` flag should match the flag that was passed to `build.cmd` in the previous step.

To run an individual test (after it was built), navigate to the `artifacts\tests\coreclr\[Windows|Linux|OSX[.x64.[Debug|Release]\$path_to_test` directory. `$path_to_test` matches the subtree of `src\tests`. You should see a `[.cmd|.sh]` file there. This file is a script that will compile and launch the individual test for you. Before invoking the script, set the following environment variables:

* CORE_ROOT=$repo_root\artifacts\tests\coreclr\[Windows|Linux|OSX[.x64.[Debug|Release]\Tests\Core_Root
* RunNativeAot=1
* __TestDotNetCmd=$repo_root\dotnet[.cmd|.sh]

`$repo_root` is the root of your clone of the repo.

By default the test suite will delete the build artifacts (Native AOT images and response files) if the test compiled successfully. If you want to keep these files instead of deleting them after test run, set the following environment variables and make sure you'll have enough disk space (tens of MB per test):

* CLRTestNoCleanup=1

For more advanced scenarios, look for at [Building Test Subsets](../../testing/coreclr/windows-test-instructions.md#building-test-subsets) and [Generating Core_Root](../../testing/coreclr/windows-test-instructions.md#generating-core_root)

## Design Documentation

- [ILC Compiler Architecture](../../../design/coreclr/botr/ilc-architecture.md)
- [Managed Type System](../../../design/coreclr/botr/managed-type-system.md)
