--[====[Generated by CreateTests.lua]====]
return function()
	return [[Function 0 (??):
REMARK allocation: table array 3
    1: for i,v in {1,2,3} do 
NEWTABLE R0 0 3
LOADN R3 1
LOADN R4 2
LOADN R5 3
SETLIST R0 R3 3 [1]
LOADNIL R1
LOADNIL R2
FORGPREP R0 L1
    2: 	print(i,v)
L0: GETIMPORT R5 1 [print]
MOVE R6 R3
MOVE R7 R4
CALL R5 2 0
    1: for i,v in {1,2,3} do 
L1: FORGLOOP R0 L0 2
    5: print("GENERALIZED DONE")
GETIMPORT R0 1 [print]
LOADK R1 K2 ['GENERALIZED DONE']
CALL R0 1 0
    7: for i,v in pairs({6,7,8,9}) do 
GETIMPORT R0 4 [pairs]
REMARK allocation: table array 4
NEWTABLE R1 0 4
LOADN R3 6
LOADN R4 7
LOADN R5 8
LOADN R6 9
SETLIST R1 R3 4 [1]
CALL R0 1 3
FORGPREP_NEXT R0 L3
    8:  	print(i,v)
L2: GETIMPORT R5 1 [print]
MOVE R6 R3
MOVE R7 R4
CALL R5 2 0
    7: for i,v in pairs({6,7,8,9}) do 
L3: FORGLOOP R0 L2 2
   10: 
RETURN R0 0

]]
end