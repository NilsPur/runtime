// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.





.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 4:0:0:0
}
.assembly extern xunit.core {}

.assembly extern mscorlib
{
}
.assembly 'nested'
{
}
.module nested.exe
.custom instance void [mscorlib]System.Security.UnverifiableCodeAttribute::.ctor() = ( 01 00 00 00 ) 

.file alignment 512

.class public sequential ansi sealed beforefieldinit Internal
       extends [mscorlib]System.ValueType
{
  .field public unsigned int8 _byte
  .field public int8 _sbyte
  .field public int16 _short
  .field public unsigned int16 _ushort
  .field public int32 _int
  .field public unsigned int32 _uint
  .field public int64 _long
  .field public unsigned int64 _ulong
  .field public float32 _float
  .field public unsigned int32 _pad
  .field public float64 _double
} // end of class Internal

.class public sequential ansi sealed beforefieldinit Test_nested
       extends [mscorlib]System.ValueType
{
  .field public unsigned int8 _byte
  .field public unsigned int32 _pad
  .field public valuetype Internal intern
  .field public int8 _sbyte
  .field public int16 _short
  .field public unsigned int16 _ushort
  .field public static valuetype Test_nested static_test at D_1
  .method public hidebysig static char  hex(unsigned int8 v) cil managed
  {
    .maxstack  3
    .locals (char V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   9
    IL_0003:  bgt.s      IL_000b

    IL_0005:  ldarg.0
    IL_0006:  ldc.i4.s   48
    IL_0008:  add
    IL_0009:  br.s       IL_0012

    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   10
    IL_000e:  sub
    IL_000f:  ldc.i4.s   65
    IL_0011:  add
    IL_0012:  conv.u2
    IL_0013:  stloc.0
    IL_0014:  br.s       IL_0016

    IL_0016:  ldloc.0
    IL_0017:  ret
  } // end of method Test::hex

  .method public hidebysig static void  DumpStruct(valuetype Test_nested& test) cil managed
  {
    .maxstack  2
    .locals (valuetype Test_nested& pinned V_0,
             unsigned int8* V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  stloc.0
    IL_0002:  ldstr      ".data D_1 = bytearray( "
    IL_0007:  call       void [System.Console]System.Console::Write(string)
    IL_000c:  ldloc.0
    IL_000d:  conv.i
    IL_000e:  stloc.1
    IL_000f:  ldc.i4.0
    IL_0010:  stloc.2
    IL_0011:  br.s       IL_0051

    IL_0013:  ldloc.1
    IL_0014:  ldloc.2
    IL_0015:  add
    IL_0016:  ldind.u1
    IL_0017:  ldc.i4.4
    IL_0018:  shr
    IL_0019:  conv.u1
    IL_001a:  call       char Test_nested::hex(unsigned int8)
    IL_001f:  call       void [System.Console]System.Console::Write(char)
    IL_0024:  ldloc.1
    IL_0025:  ldloc.2
    IL_0026:  add
    IL_0027:  ldind.u1
    IL_0028:  ldc.i4.s   15
    IL_002a:  and
    IL_002b:  conv.u1
    IL_002c:  call       char Test_nested::hex(unsigned int8)
    IL_0031:  call       void [System.Console]System.Console::Write(char)
    IL_0036:  ldstr      " "
    IL_003b:  call       void [System.Console]System.Console::Write(string)
    IL_0040:  ldloc.2
    IL_0041:  ldc.i4.s   16
    IL_0043:  rem
    IL_0044:  ldc.i4.s   15
    IL_0046:  bne.un.s   IL_004d

    IL_0048:  call       void [System.Console]System.Console::WriteLine()
    IL_004d:  ldloc.2
    IL_004e:  ldc.i4.1
    IL_004f:  add
    IL_0050:  stloc.2
    IL_0051:  ldloc.2
    IL_0052:  sizeof     Test_nested
    IL_0058:  blt.s      IL_0013

    IL_005a:  ldstr      " )"
    IL_005f:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0064:  ldc.i4.0
    IL_0065:  conv.u
    IL_0066:  stloc.0
    IL_0067:  ret
  } // end of method Test::DumpStruct

  .method public hidebysig static void  VerifyStruct(valuetype Test_nested& test) cil managed
  {
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype Internal Test_nested::intern
    IL_0006:  ldfld      unsigned int8 Internal::_byte
    IL_000b:  ldc.i4     0xde
    IL_0010:  bne.un     IL_00fe

    IL_0015:  ldarg.0
    IL_0016:  ldflda     valuetype Internal Test_nested::intern
    IL_001b:  ldfld      int8 Internal::_sbyte
    IL_0020:  conv.i4
    IL_0021:  ldc.i4.s   111
    IL_0023:  bne.un     IL_00fe

    IL_0028:  ldarg.0
    IL_0029:  ldflda     valuetype Internal Test_nested::intern
    IL_002e:  ldfld      int16 Internal::_short
    IL_0033:  ldc.i4     0x3039
    IL_0038:  bne.un     IL_00fe

    IL_003d:  ldarg.0
    IL_003e:  ldflda     valuetype Internal Test_nested::intern
    IL_0043:  ldfld      unsigned int16 Internal::_ushort
    IL_0048:  conv.i4
    IL_0049:  ldc.i4     0xc822
    IL_004e:  bne.un     IL_00fe

    IL_0053:  ldarg.0
    IL_0054:  ldflda     valuetype Internal Test_nested::intern
    IL_0059:  ldfld      int32 Internal::_int
    IL_005e:  ldc.i4     0x2134566
    IL_0063:  bne.un     IL_00fe

    IL_0068:  ldarg.0
    IL_0069:  ldflda     valuetype Internal Test_nested::intern
    IL_006e:  ldfld      unsigned int32 Internal::_uint
    IL_0073:  ldc.i4     0x2134566
    IL_0078:  bne.un     IL_00fe

    IL_007d:  ldarg.0
    IL_007e:  ldflda     valuetype Internal Test_nested::intern
    IL_0083:  ldfld      int64 Internal::_long
    IL_0088:  ldc.i4     0x2134566
    IL_008d:  conv.i8
    IL_008e:  bne.un.s   IL_00fe

    IL_0090:  ldarg.0
    IL_0091:  ldflda     valuetype Internal Test_nested::intern
    IL_0096:  ldfld      unsigned int64 Internal::_ulong
    IL_009b:  ldc.i4     0x2134566
    IL_00a0:  conv.i8
    IL_00a1:  bne.un.s   IL_00fe

    IL_00a3:  ldarg.0
    IL_00a4:  ldflda     valuetype Internal Test_nested::intern
    IL_00a9:  ldfld      float32 Internal::_float
    IL_00ae:  ldc.r4     70.000999
    IL_00b3:  bne.un.s   IL_00fe

    IL_00b5:  ldarg.0
    IL_00b6:  ldflda     valuetype Internal Test_nested::intern
    IL_00bb:  ldfld      float64 Internal::_double
    IL_00c0:  ldc.r8     80.001999999999995
    IL_00c9:  bne.un.s   IL_00fe

    IL_00cb:  ldarg.0
    IL_00cc:  ldfld      unsigned int8 Test_nested::_byte
    IL_00d1:  ldc.i4     0xde
    IL_00d6:  bne.un.s   IL_00fe

    IL_00d8:  ldarg.0
    IL_00d9:  ldfld      int8 Test_nested::_sbyte
    IL_00de:  conv.i4
    IL_00df:  ldc.i4.s   111
    IL_00e1:  bne.un.s   IL_00fe

    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      int16 Test_nested::_short
    IL_00e9:  ldc.i4     0x3039
    IL_00ee:  bne.un.s   IL_00fe

    IL_00f0:  ldarg.0
    IL_00f1:  ldfld      unsigned int16 Test_nested::_ushort
    IL_00f6:  conv.i4
    IL_00f7:  ldc.i4     0xc822
    IL_00fc:  beq.s      IL_0104

    IL_00fe:  newobj     instance void [mscorlib]System.Exception::.ctor()
    IL_0103:  throw

    IL_0104:  ret
  } // end of method Test::VerifyStruct

  .method public hidebysig static int32 Main() cil managed
  {
    .custom instance void [xunit.core]Xunit.FactAttribute::.ctor() = (
        01 00 00 00
    )
    .entrypoint
    .maxstack  1
    .locals (int32 V_0)
    IL_000a:  ldsflda    valuetype Test_nested Test_nested::static_test
    IL_000f:  call       void Test_nested::DumpStruct(valuetype Test_nested&)
    IL_0014:  ldsflda    valuetype Test_nested Test_nested::static_test
    IL_0019:  call       void Test_nested::VerifyStruct(valuetype Test_nested&)
    IL_001e:  ldc.i4.s   100
    IL_0020:  stloc.0
    IL_0021:  br.s       IL_0023

    IL_0023:  ldloc.0
    IL_0024:  ret
  } // end of method Test::Main

} // end of class Test

.data D_1 = bytearray( DE 00 00 00 00 00 00 00 DE 6F 39 30 22 C8 00 00
66 45 13 02 66 45 13 02 66 45 13 02 00 00 00 00
66 45 13 02 00 00 00 00 83 00 8C 42 00 00 00 00
E3 A5 9B C4 20 00 54 40 6F 00 39 30 22 C8 00 00
 )
