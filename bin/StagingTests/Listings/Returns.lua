--[====[Generated by CreateTests.lua]====]
return function()
	return [[Function 0 (foo):
    2: 	return 1,2,3,4,5,6,7,8,9,10
LOADN R0 1
LOADN R1 2
LOADN R2 3
LOADN R3 4
LOADN R4 5
LOADN R5 6
LOADN R6 7
LOADN R7 8
LOADN R8 9
LOADN R9 10
RETURN R0 10

Function 1 (foomult):
REMARK builtin table.unpack/1
REMARK allocation: table array 10
    6: 	return table.unpack({1,2,3,4,5,6,7,8,9,10})
NEWTABLE R1 0 10
LOADN R2 1
LOADN R3 2
LOADN R4 3
LOADN R5 4
LOADN R6 5
LOADN R7 6
LOADN R8 7
LOADN R9 8
LOADN R10 9
LOADN R11 10
SETLIST R1 R2 10 [1]
FASTCALL1 53 R1 L0
GETIMPORT R0 2 [table.unpack]
CALL R0 1 -1
L0: RETURN R0 -1

Function 2 (fooparams):
   10: 	return 1,2,3,4,5,6,7,8,9,10
LOADN R7 1
LOADN R8 2
LOADN R9 3
LOADN R10 4
LOADN R11 5
LOADN R12 6
LOADN R13 7
LOADN R14 8
LOADN R15 9
LOADN R16 10
RETURN R7 10

Function 3 (foomultparams):
REMARK builtin table.unpack/1
REMARK allocation: table array 10
   14: 	return table.unpack({1,2,3,4,5,6,7,8,9,10})
NEWTABLE R8 0 10
LOADN R9 1
LOADN R10 2
LOADN R11 3
LOADN R12 4
LOADN R13 5
LOADN R14 6
LOADN R15 7
LOADN R16 8
LOADN R17 9
LOADN R18 10
SETLIST R8 R9 10 [1]
FASTCALL1 53 R8 L0
GETIMPORT R7 2 [table.unpack]
CALL R7 1 -1
L0: RETURN R7 -1

Function 4 (??):
    1: local function foo()
DUPCLOSURE R0 K0 ['foo']
    5: local function foomult()
DUPCLOSURE R1 K1 ['foomult']
    9: local function fooparams(a,b,c,d,e,f,g)
DUPCLOSURE R2 K2 ['fooparams']
   13: local function foomultparams(a,b,c,d,e,f,g)
DUPCLOSURE R3 K3 ['foomultparams']
   17: print(foo())
GETIMPORT R4 5 [print]
MOVE R5 R0
CALL R5 0 -1
CALL R4 -1 0
   18: print(fooparams())
GETIMPORT R4 5 [print]
MOVE R5 R2
CALL R5 0 -1
CALL R4 -1 0
   19: print(foomult())
GETIMPORT R4 5 [print]
MOVE R5 R1
CALL R5 0 -1
CALL R4 -1 0
   20: print(foomultparams())
GETIMPORT R4 5 [print]
MOVE R5 R3
CALL R5 0 -1
CALL R4 -1 0
   21: 
RETURN R0 0

]]
end