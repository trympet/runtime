// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.

#include "version.h"

.assembly System.Runtime.CompilerServices.Unsafe
{
  .custom instance void [CORE_ASSEMBLY]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 )
  .custom instance void [CORE_ASSEMBLY]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                                   63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [CORE_ASSEMBLY]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [CORE_ASSEMBLY]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 02 00 00 00 00 00 )

  .custom instance void [CORE_ASSEMBLY]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = FILE_VERSION
  .custom instance void [CORE_ASSEMBLY]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = INFORMATIONAL_VERSION
  .custom instance void [CORE_ASSEMBLY]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 26 53 79 73 74 65 6D 2E 52 75 6E 74 69 6D   // ..&System.Runtim
                                                                                              65 2E 43 6F 6D 70 69 6C 65 72 53 65 72 76 69 63   // e.CompilerServic
                                                                                              65 73 2E 55 6E 73 61 66 65 00 00 )                // es.Unsafe..
  .custom instance void [CORE_ASSEMBLY]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 26 53 79 73 74 65 6D 2E 52 75 6E 74 69 6D   // ..&System.Runtim
                                                                                                    65 2E 43 6F 6D 70 69 6C 65 72 53 65 72 76 69 63   // e.CompilerServic
                                                                                                    65 73 2E 55 6E 73 61 66 65 00 00 )                // es.Unsafe..
  .custom instance void [CORE_ASSEMBLY]System.Reflection.AssemblyMetadataAttribute::.ctor(string, string) = (
    01 00 15 2e 4e 45 54 46 72 61 6d 65 77 6f 72 6b
    41 73 73 65 6d 62 6c 79 00 00 00
  ) // ".NETFrameworkAssembly", ""
  .custom instance void [CORE_ASSEMBLY]System.Reflection.AssemblyMetadataAttribute::.ctor(string, string) = (
    01 00 0b 53 65 72 76 69 63 65 61 62 6c 65 04 54
    72 75 65 00 00
  ) // "Serviceable", "True"
  .custom instance void [CORE_ASSEMBLY]System.Reflection.AssemblyMetadataAttribute::.ctor(string, string) = (
    01 00 0b 49 73 54 72 69 6d 6d 61 62 6c 65 04 54
    72 75 65 00 00
  ) // "IsTrimmable", "True"
  .custom instance void [CORE_ASSEMBLY]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 2F C2 A9 20 4D 69 63 72 6F 73 6F 66 74 20   // ../.. Microsoft
                                                                                        43 6F 72 70 6F 72 61 74 69 6F 6E 2E 20 20 41 6C   // Corporation.  Al
                                                                                        6C 20 72 69 67 68 74 73 20 72 65 73 65 72 76 65   // l rights reserve
                                                                                        64 2E 00 00 )                                     // d...
  .custom instance void [CORE_ASSEMBLY]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 15 4D 69 63 72 6F 73 6F 66 74 20 43 6F 72   // ...Microsoft Cor
                                                                                      70 6F 72 61 74 69 6F 6E 00 00 )                   // poration..
  .custom instance void [CORE_ASSEMBLY]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 1A 4D 69 63 72 6F 73 6F 66 74 C2 AE 20 2E   // ...Microsoft.. .
                                                                                      4E 45 54 20 46 72 61 6D 65 77 6F 72 6B 00 00 )    // NET Framework..
  .custom instance void [CORE_ASSEMBLY]System.CLSCompliantAttribute::.ctor(bool) = (
    01 00 00 00 00
  ) // false
  .hash algorithm 0x00008004
  .ver ASSEMBLY_VERSION
}
.module System.Runtime.CompilerServices.Unsafe.dll
// MVID: {1E97D84A-565B-49C5-B60A-F31A1A4ACE13}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x02ED0000


// =============== CLASS MEMBERS DECLARATION ===================

.class public abstract auto ansi sealed beforefieldinit System.Runtime.CompilerServices.Unsafe
       extends [CORE_ASSEMBLY]System.Object
{
  .method public hidebysig static !!T Read<T>(void* source) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldobj !!T
        ret
  } // end of method Unsafe::Read

  .method public hidebysig static !!T ReadUnaligned<T>(void* source) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        unaligned. 0x1
        ldobj !!T
        ret
  } // end of method Unsafe::ReadUnaligned

  .method public hidebysig static !!T ReadUnaligned<T>(uint8& source) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        unaligned. 0x1
        ldobj !!T
        ret
  } // end of method Unsafe::ReadUnaligned

  .method public hidebysig static void Write<T>(void* destination,
                                                 !!T 'value') cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        stobj !!T
        ret
  } // end of method Unsafe::Write

  .method public hidebysig static void WriteUnaligned<T>(void* destination,
                                                 !!T 'value') cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        unaligned. 0x01
        stobj !!T
        ret
  } // end of method Unsafe::WriteUnaligned

  .method public hidebysig static void WriteUnaligned<T>(uint8& destination,
                                                 !!T 'value') cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        unaligned. 0x01
        stobj !!T
        ret
  } // end of method Unsafe::WriteUnaligned

  .method public hidebysig static void Copy<T>(void* destination,
                                                !!T& source) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        ldobj !!T
        stobj !!T
        ret
  } // end of method Unsafe::Copy

  .method public hidebysig static void Copy<T>(!!T& destination,
                                                void* source) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        ldobj !!T
        stobj !!T
        ret
  } // end of method Unsafe::Copy

  .method public hidebysig static void* AsPointer<T>(!!T& 'value') cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        conv.u
        ret
  } // end of method Unsafe::AsPointer

  .method public hidebysig static void SkipInit<T> ([out] !!T& 'value') cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ret
  } // end of method Unsafe::SkipInit

  .method public hidebysig static int32 SizeOf<T>() cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        sizeof !!T
        ret
  } // end of method Unsafe::SizeOf

  .method public hidebysig static void CopyBlock(void* destination, void* source, uint32 byteCount) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        ldarg.2
        cpblk
        ret
  } // end of method Unsafe::CopyBlock

  .method public hidebysig static void CopyBlock(uint8& destination, uint8& source, uint32 byteCount) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        ldarg.2
        cpblk
        ret
  } // end of method Unsafe::CopyBlock

  .method public hidebysig static void CopyBlockUnaligned(void* destination, void* source, uint32 byteCount) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        ldarg.2
        unaligned. 0x1
        cpblk
        ret
  } // end of method Unsafe::CopyBlockUnaligned

  .method public hidebysig static void CopyBlockUnaligned(uint8& destination, uint8& source, uint32 byteCount) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        ldarg.2
        unaligned. 0x1
        cpblk
        ret
  } // end of method Unsafe::CopyBlockUnaligned

  .method public hidebysig static void InitBlock(void* startAddress, uint8 'value', uint32 byteCount) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        ldarg.2
        initblk
        ret
  } // end of method Unsafe::InitBlock

  .method public hidebysig static void InitBlock(uint8& startAddress, uint8 'value', uint32 byteCount) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        ldarg.2
        initblk
        ret
  } // end of method Unsafe::InitBlock

  .method public hidebysig static void InitBlockUnaligned(void* startAddress, uint8 'value', uint32 byteCount) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        ldarg.2
        unaligned. 0x1
        initblk
        ret
  } // end of method Unsafe::InitBlockUnaligned

  .method public hidebysig static void InitBlockUnaligned(uint8& startAddress, uint8 'value', uint32 byteCount) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        ldarg.2
        unaligned. 0x1
        initblk
        ret
  } // end of method Unsafe::InitBlockUnaligned

  .method public hidebysig static !!T As<class T>(object o) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ret
  } // end of method Unsafe::As

  .method public hidebysig static !!T& AsRef<T>(void* source) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
// For .NET Core the roundtrip via a local is no longer needed see:
// https://github.com/dotnet/runtime/issues/8730
// and
// https://github.com/dotnet/coreclr/pull/11218
#ifdef netcoreapp
        .maxstack 8
        ldarg.0
        ret
#else
        .locals (int32&)
        .maxstack 8
        ldarg.0
        // Roundtrip via a local to avoid type mismatch on return that the JIT inliner chokes on.
        stloc.0
        ldloc.0
        ret
#endif
  } // end of method Unsafe::AsRef

  .method public hidebysig static !!T& AsRef<T>(!!T& source) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .param [1]
#ifdef netcoreapp
        .custom instance void [CORE_ASSEMBLY]System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = ( 01 00 00 00 )
#else
        .custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = ( 01 00 00 00 )
#endif
        .maxstack 8
        ldarg.0
        ret
  } // end of method Unsafe::AsRef

  .method public hidebysig static !!TTo& As<TFrom, TTo>(!!TFrom& source) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ret
  } // end of method Unsafe::As

  .method public hidebysig static !!T& Unbox<valuetype .ctor ([CORE_ASSEMBLY]System.ValueType) T> (object 'box') cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        unbox !!T
        ret
  } // end of method Unsafe::Unbox

  .method public hidebysig static !!T& Add<T>(!!T& source, int32 elementOffset) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        sizeof !!T
        conv.i
        mul
        add
        ret
  } // end of method Unsafe::Add

  .method public hidebysig static void* Add<T>(void* source, int32 elementOffset) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        sizeof !!T
        conv.i
        mul
        add
        ret
  } // end of method Unsafe::Add

  .method public hidebysig static !!T& Add<T>(!!T& source, native int elementOffset) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        sizeof !!T
        mul
        add
        ret
  } // end of method Unsafe::Add

  .method public hidebysig static !!T& Add<T>(!!T& source, native uint elementOffset) cil managed aggressiveinlining
  {
        .param [2]
            .custom instance void System.Runtime.CompilerServices.NativeIntegerAttribute::.ctor() = (
                01 00 00 00
            )
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        sizeof !!T
        mul
        add
        ret
  } // end of method Unsafe::Add

  .method public hidebysig static !!T& AddByteOffset<T>(!!T& source, native int byteOffset) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        add
        ret
  } // end of method Unsafe::AddByteOffset

  .method public hidebysig static !!T& AddByteOffset<T>(!!T& source, native uint byteOffset) cil managed aggressiveinlining
  {
        .param [2]
            .custom instance void System.Runtime.CompilerServices.NativeIntegerAttribute::.ctor() = (
                01 00 00 00
            )
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        add
        ret
  } // end of method Unsafe::AddByteOffset

  .method public hidebysig static !!T& Subtract<T>(!!T& source, int32 elementOffset) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        sizeof !!T
        conv.i
        mul
        sub
        ret
  } // end of method Unsafe::Subtract

  .method public hidebysig static void* Subtract<T>(void* source, int32 elementOffset) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        sizeof !!T
        conv.i
        mul
        sub
        ret
  } // end of method Unsafe::Subtract

  .method public hidebysig static !!T& Subtract<T>(!!T& source, native int elementOffset) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        sizeof !!T
        mul
        sub
        ret
  } // end of method Unsafe::Subtract

  .method public hidebysig static !!T& Subtract<T>(!!T& source, native uint elementOffset) cil managed aggressiveinlining
  {
        .param [2]
            .custom instance void System.Runtime.CompilerServices.NativeIntegerAttribute::.ctor() = (
                01 00 00 00
            )
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        sizeof !!T
        mul
        sub
        ret
  } // end of method Unsafe::Subtract

  .method public hidebysig static !!T& SubtractByteOffset<T>(!!T& source, native int byteOffset) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        sub
        ret
  } // end of method Unsafe::SubtractByteOffset

  .method public hidebysig static !!T& SubtractByteOffset<T>(!!T& source, native uint byteOffset) cil managed aggressiveinlining
  {
        .param [2]
            .custom instance void System.Runtime.CompilerServices.NativeIntegerAttribute::.ctor() = (
                01 00 00 00
            )
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        sub
        ret
  } // end of method Unsafe::SubtractByteOffset

  .method public hidebysig static native int ByteOffset<T>(!!T& origin, !!T& target) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.1
        ldarg.0
        sub
        ret
  } // end of method Unsafe::ByteOffset

  .method public hidebysig static bool AreSame<T>(!!T& left, !!T& right) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        ceq
        ret
  } // end of method Unsafe::AreSame

  .method public hidebysig static bool IsAddressGreaterThan<T>(!!T& left, !!T& right) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        cgt.un
        ret
  } // end of method Unsafe::IsAddressGreaterThan

  .method public hidebysig static bool IsAddressLessThan<T>(!!T& left, !!T& right) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldarg.1
        clt.un
        ret
  } // end of method Unsafe::IsAddressLessThan

  .method public hidebysig static bool IsNullRef<T>(!!T& source) cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldarg.0
        ldc.i4.0
        conv.u
        ceq
        ret
  } // end of method Unsafe::IsNullRef

  .method public hidebysig static !!T& NullRef<T>() cil managed aggressiveinlining
  {
        .custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = ( 01 00 00 00 )
        .maxstack 8
        ldc.i4.0
        conv.u
        ret
  } // end of method Unsafe::NullRef

} // end of class System.Runtime.CompilerServices.Unsafe

.class private auto ansi sealed beforefieldinit System.Runtime.Versioning.NonVersionableAttribute
       extends [CORE_ASSEMBLY]System.Attribute
{
  .custom instance void [CORE_ASSEMBLY]System.AttributeUsageAttribute::.ctor(valuetype [CORE_ASSEMBLY]System.AttributeTargets) = ( 01 00 6C 00 00 00 02 00 54 02 0D 41 6C 6C 6F 77   // ..l.....T..Allow
                                                                                                                                     4D 75 6C 74 69 70 6C 65 00 54 02 09 49 6E 68 65   // Multiple.T..Inhe
                                                                                                                                     72 69 74 65 64 00 )                               // rited.
  .method public hidebysig specialname rtspecialname
          instance void  .ctor() cil managed
  {
        .maxstack 8
        ldarg.0
        call instance void [CORE_ASSEMBLY]System.Attribute::.ctor()
        ret
  } // end of method NonVersionableAttribute::.ctor

} // end of class System.Runtime.Versioning.NonVersionableAttribute

#ifdef netcoreapp
#else
.class private auto ansi sealed beforefieldinit System.Runtime.CompilerServices.IsReadOnlyAttribute
       extends [CORE_ASSEMBLY]System.Attribute
{
  .method public hidebysig specialname rtspecialname
          instance void .ctor () cil managed
  {
        .maxstack 8
        ldarg.0
        call instance void [CORE_ASSEMBLY]System.Attribute::.ctor()
        ret
  } // end of method IsReadOnlyAttribute::.ctor

} // end of class System.Runtime.CompilerServices.IsReadOnlyAttribute
#endif

.class private auto ansi sealed beforefieldinit Microsoft.CodeAnalysis.EmbeddedAttribute
    extends [CORE_ASSEMBLY]System.Attribute
{
    .custom instance void [CORE_ASSEMBLY]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
        01 00 00 00
    )
    .custom instance void Microsoft.CodeAnalysis.EmbeddedAttribute::.ctor() = (
        01 00 00 00
    )
    .method public hidebysig specialname rtspecialname 
        instance void .ctor () cil managed 
    {
        .maxstack 8
        IL_0000: ldarg.0
        IL_0001: call instance void [CORE_ASSEMBLY]System.Attribute::.ctor()
        IL_0006: ret
    } // end of method EmbeddedAttribute::.ctor

} // end of class Microsoft.CodeAnalysis.EmbeddedAttribute

.class private auto ansi sealed beforefieldinit System.Runtime.CompilerServices.NativeIntegerAttribute
    extends [CORE_ASSEMBLY]System.Attribute
{
    .custom instance void [CORE_ASSEMBLY]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
        01 00 00 00
    )
    .custom instance void Microsoft.CodeAnalysis.EmbeddedAttribute::.ctor() = (
        01 00 00 00
    )
    .custom instance void [CORE_ASSEMBLY]System.AttributeUsageAttribute::.ctor(valuetype [CORE_ASSEMBLY]System.AttributeTargets) = (
        01 00 84 6b 00 00 02 00 54 02 0d 41 6c 6c 6f 77
        4d 75 6c 74 69 70 6c 65 00 54 02 09 49 6e 68 65
        72 69 74 65 64 00
    )
    .field public initonly bool[] TransformFlags

    .method public hidebysig specialname rtspecialname 
        instance void .ctor () cil managed 
    {
        .maxstack 8
        IL_0000: ldarg.0
        IL_0001: call instance void [CORE_ASSEMBLY]System.Attribute::.ctor()
        IL_0006: ldarg.0
        IL_0007: ldc.i4.1
        IL_0008: newarr [CORE_ASSEMBLY]System.Boolean
        IL_000d: dup
        IL_000e: ldc.i4.0
        IL_000f: ldc.i4.1
        IL_0010: stelem.i1
        IL_0011: stfld bool[] System.Runtime.CompilerServices.NativeIntegerAttribute::TransformFlags
        IL_0016: ret
    } // end of method NativeIntegerAttribute::.ctor

    .method public hidebysig specialname rtspecialname 
        instance void .ctor (
            bool[] ''
        ) cil managed 
    {
        .maxstack 8
        IL_0000: ldarg.0
        IL_0001: call instance void [CORE_ASSEMBLY]System.Attribute::.ctor()
        IL_0006: ldarg.0
        IL_0007: ldarg.1
        IL_0008: stfld bool[] System.Runtime.CompilerServices.NativeIntegerAttribute::TransformFlags
        IL_000d: ret
    } // end of method NativeIntegerAttribute::.ctor

} // end of class System.Runtime.CompilerServices.NativeIntegerAttribute
