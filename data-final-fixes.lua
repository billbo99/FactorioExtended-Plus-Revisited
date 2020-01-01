require("prototypes.map.presets")
require("prototypes.recipe.recipe-final-fixes")

local function AddRecipeToProdModules(recipe)
    for mod, mod_table in pairs(data.raw["module"]) do
        if mod_table.limitation then
            log(mod)
            table.insert(mod_table.limitation, recipe)
        end
    end
end

AddRecipeToProdModules("titanium-alloy")
AddRecipeToProdModules("titanium-gear")
AddRecipeToProdModules("titanium-rod")
AddRecipeToProdModules("titanium-girder")

