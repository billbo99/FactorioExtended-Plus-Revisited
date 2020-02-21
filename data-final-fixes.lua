require("prototypes.map.presets")
require("prototypes.recipe.recipe-final-fixes")

data.raw["item-group"]["FactorioExtended"].icon = "__FactorioExtended-Plus-Revisited__/graphics/group/FEPR_128.png"
data.raw["item-group"]["FactorioExtended"].icon_size = 128
data.raw["item-group"]["FactorioExtended"].localised_name = "Factorio Extended Plus (Revisited)"

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
