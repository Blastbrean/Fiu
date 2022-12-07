local fiu = require("../Source")
local allTests = {
	"AndOr", "AndOrK", "Arit", "AritK", "Booleans", "Concat", "DupTableSetList", "GetImportSpecial", "Globals", "HelloWorld",
	"LOADN", "LOADNIL", "Tables", "Unary", "Conditions"

	-- "WhileRepeat", "WhileTrueDo", "BasicJump",  > not implemented
}

local specificTests = {
	"WhileRepeat"
}

for i,v in specificTests do
	print(string.format(">>>>>>>> RUNNING TEST: %s <<<<<<<<", v))
	print("--------->> BYTECODE LISTING <<---------")
	print(require("Listings/"..v)())
	print("--------->> VM OUTPUT <<---------") 
	print("VM PCALL: ", pcall(function()
		local m = require("Tests/"..v)()
		fiu.luau_load(m, getfenv())()
	end))
	print("--------->> SOURCE OUTPUT <<---------") 
	print("SOURCE PCALL: ", pcall(function()
		require("SourceTests/"..v)()
	end))
	print(string.format(">>>>>>>> FINISHED RUNNING TEST: %s <<<<<<<<", v))
end
