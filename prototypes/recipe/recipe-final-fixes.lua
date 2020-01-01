local Data = require('__stdlib__/stdlib/data/data')
local Recipe = require('__stdlib__/stdlib/data/recipe')

updates = {
    ['repair-pack-mk2'] = { replace = {{old = "iron-gear-wheel", new = "titanium-gear"}} },
    ['repair-pack-mk3'] = { replace = {{old = "iron-gear-wheel", new = "titanium-gear"}} },

    ['rapid-transport-belt-mk1'] = { replace = {{old = "iron-gear-wheel", new = "titanium-gear"}} },
    ['rapid-transport-belt-to-ground-mk1'] = { replace = {{old = "iron-gear-wheel", new = "titanium-gear"}} },
    ['rapid-splitter-mk1'] = { replace = {{old = "iron-gear-wheel", new = "titanium-gear"}} },

    ['rapid-transport-belt-mk2'] = { replace = {{old = "iron-gear-wheel", new = "titanium-gear"}} },
    ['rapid-transport-belt-to-ground-mk2'] = { replace = {{old = "iron-gear-wheel", new = "titanium-gear"}} },
    ['rapid-splitter-mk2'] = { replace = {{old = "iron-gear-wheel", new = "titanium-gear"}} },

    ['steam-engine-mk3'] = { replace = {{old = "titanium-alloy", new = "titanium-girder"}} },
    ['boiler-mk3'] = { replace = {{old = "titanium-alloy", new = "titanium-girder"}} },

    ['cargo-wagon-mk2'] = { 
        remove = { "iron-plate", "steel-plate"},
        add = {{name = "titanium-alloy", amount = 20}, {name = "titanium-girder", amount = 20}, {name = "titanium-gear", amount = 10}}
    },
    ['cargo-wagon-mk3'] = { 
        remove = { "iron-plate", "steel-plate", "titanium-alloy"},
        add = {{name = "titanium-alloy", amount = 50}, {name = "titanium-girder", amount = 50}, {name = "titanium-gear", amount = 50}}
    },

    ['fluid-wagon-mk2'] = { 
        replace = {{old = "steel-plate", new = "titanium-alloy"}}, 
        add = {{name = "advanced-circuit", amount = 1}} 
    },
    ['fluid-wagon-mk3'] = { 
        replace = {{old = "titanium-alloy", new = "titanium-girder"}},
        add = {{name = "processing-unit", amount = 1}} 
    },

    ['locomotive-mk2'] = { replace = {{old = "steel-plate", new = "titanium-alloy"}} },
    ['locomotive-mk3'] = { replace = {{old = "titanium-alloy", new = "titanium-girder"}} },

    ['medium-electric-pole-mk2'] = { 
        remove = {"electronic-circuit"},
        add = {{name = "titanium-rod", amount = 4}, {name = "titanium-girder", amount = 2}, {name = "advanced-circuit", amount = 1}} 
    },
    ['medium-electric-pole-mk3'] = { 
        remove = {"advanced-circuit"},
        add = {{name = "titanium-rod", amount = 4}, {name = "titanium-girder", amount = 2}, {name = "processing-unit", amount = 1}} 
    },

    ['big-electric-pole-mk2'] = { 
        remove = {"electronic-circuit"},
        add = {{name = "titanium-rod", amount = 8}, {name = "titanium-girder", amount = 5}, {name = "advanced-circuit", amount = 3}} 
    },
    ['big-electric-pole-mk3'] = { 
        remove = {"advanced-circuit"},
        add = {{name = "titanium-rod", amount = 8}, {name = "titanium-girder", amount = 5}, {name = "processing-unit", amount = 3}}
    },

    ['substation-mk2'] = { add = {{name = "titanium-girder", amount = 10}} },
    ['substation-mk3'] = { add = {{name = "titanium-girder", amount = 10}} },

    ['accumulator-mk2'] = { replace = {{old = "iron-plate", new = "titanium-alloy"}} },
    ['accumulator-mk3'] = { replace = {{old = "steel-plate", new = "titanium-girder"}} },
    ['accumulator-mk4'] = { replace = {{old = "steel-plate", new = "titanium-girder"}} },
    ['accumulator-mk5'] = { replace = {{old = "steel-plate", new = "titanium-girder"}} },
    ['accumulator-mk6'] = { replace = {{old = "steel-plate", new = "titanium-girder"}} },
    ['accumulator-mk7'] = { replace = {{old = "steel-plate", new = "titanium-girder"}} },
    ['accumulator-mk8'] = { replace = {{old = "steel-plate", new = "titanium-girder"}} },

    ['solar-panel-mk2'] = { replace = {{old = "steel-plate", new = "titanium-alloy"}} },
    ['solar-panel-mk3'] = { replace = {{old = "titanium-alloy", new = "titanium-girder"}} },

    ['electric-furnace-mk2'] = { replace = {{old = "steel-plate", new = "titanium-alloy"}} },
    ['electric-furnace-mk3'] = { replace = {{old = "titanium-alloy", new = "titanium-girder"}} },

    ['centrifuge-mk3'] = { replace = {{old = "titanium-alloy", new = "titanium-girder"}} },
    ['lab-mk3'] = { replace = {{old = "titanium-alloy", new = "titanium-girder"}} },
    ['radar-mk2'] = { replace = {{old = "steel-plate", new = "titanium-alloy"}} },

    ['roboport-mk2'] = { replace = {{old = "steel-plate", new = "titanium-alloy"}} },
    ['roboport-mk3'] = { replace = {{old = "titanium-alloy", new = "titanium-girder"}} },

    ['flying-robot-frame'] = { replace = {{old = "steel-plate", new = "titanium-girder"}} },
    ['low-density-structure'] = { replace = {{old = "steel-plate", new = "titanium-girder"}} },

}

for recipe, recipe_table in pairs(updates) do
    if data.raw.recipe[recipe] then
        if recipe_table.remove then
            for _, ingredient in pairs(recipe_table.remove) do
                Recipe(recipe):remove_ingredient(ingredient)
            end
        end
        if recipe_table.replace then
            for _, swap in pairs(recipe_table.replace) do
                Recipe(recipe):replace_ingredient(swap.old, swap.new)
            end
        end
        if recipe_table.add then
            for _, ingredient in pairs(recipe_table.add) do
                Recipe(recipe):add_ingredient(ingredient)
            end
        end
    end
end
