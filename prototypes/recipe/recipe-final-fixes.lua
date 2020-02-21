local Data = require("__stdlib__/stdlib/data/data")
local Recipe = require("__stdlib__/stdlib/data/recipe")

local function contains(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
        end
    end
    return false
end

local updates = {
    ["gun-turret-mk2"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["laser-turret-mk2"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["flamethrower-turret-mk2"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["titanium-wall"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["titanium-gate"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    --
    ["pumpjack-mk2"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["pipe-mk2"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["pipe-to-ground-mk2"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["storage-tank-mk2"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["pump-mk2"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["oil-refinery-mk2"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["oil-refinery-mk3"] = {resistances = {["acid"] = {decrease = 7, percent = 35}}},
    ["chemical-plant-mk2"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["chemical-plant-mk3"] = {resistances = {["acid"] = {decrease = 7, percent = 35}}},
    --
    ["electric-mining-drill-mk2"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["electric-mining-drill-mk3"] = {resistances = {["acid"] = {decrease = 7, percent = 35}}},
    --
    ["assembling-machine-4"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["assembling-machine-5"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    --
    ["logistic-robot-mk2"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["logistic-robot-mk3"] = {resistances = {["acid"] = {decrease = 7, percent = 35}}},
    ["construction-robot-mk2"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["construction-robot-mk3"] = {resistances = {["acid"] = {decrease = 7, percent = 35}}},
    --
    ["car-mk2"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["car-mk3"] = {resistances = {["acid"] = {decrease = 7, percent = 35}}},
    ["tank-mk2"] = {resistances = {["acid"] = {decrease = 16, percent = 80}}},
    ["tank-mk3"] = {resistances = {["acid"] = {decrease = 18, percent = 90}}},
    --
    ["titanium-chest"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["titanium-logistic-chest-active-provider"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["titanium-logistic-chest-passive-provider"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["titanium-logistic-chest-storage"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["titanium-logistic-chest-buffer"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["titanium-logistic-chest-requester"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    --
    ["fast-inserter-mk2"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["fast-inserter-mk3"] = {resistances = {["acid"] = {decrease = 7, percent = 35}}},
    ["fast-long-handed-inserter"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["filter-long-handed-inserter"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["stack-inserter-mk2"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    ["stack-filter-inserter-mk2"] = {resistances = {["acid"] = {decrease = 5, percent = 25}}},
    --
    ["repair-pack-mk2"] = {replace = {{old = "iron-gear-wheel", new = "titanium-gear"}}},
    ["repair-pack-mk3"] = {replace = {{old = "iron-gear-wheel", new = "titanium-gear"}}},
    ["rapid-transport-belt-mk1"] = {
        replace = {{old = "iron-gear-wheel", new = "titanium-gear"}},
        resistances = {["acid"] = {decrease = 5, percent = 25}}
    },
    ["rapid-transport-belt-to-ground-mk1"] = {
        replace = {{old = "iron-gear-wheel", new = "titanium-gear"}},
        resistances = {["acid"] = {decrease = 5, percent = 25}}
    },
    ["rapid-splitter-mk1"] = {
        replace = {{old = "iron-gear-wheel", new = "titanium-gear"}},
        resistances = {["acid"] = {decrease = 5, percent = 25}}
    },
    ["rapid-transport-belt-mk2"] = {
        replace = {{old = "iron-gear-wheel", new = "titanium-gear"}},
        resistances = {["acid"] = {decrease = 7, percent = 35}}
    },
    ["rapid-transport-belt-to-ground-mk2"] = {
        replace = {{old = "iron-gear-wheel", new = "titanium-gear"}},
        resistances = {["acid"] = {decrease = 7, percent = 35}}
    },
    ["rapid-splitter-mk2"] = {
        replace = {{old = "iron-gear-wheel", new = "titanium-gear"}},
        resistances = {["acid"] = {decrease = 7, percent = 35}}
    },
    ["steam-engine-mk2"] = {
        resistances = {["acid"] = {decrease = 5, percent = 25}}
    },
    ["steam-engine-mk3"] = {
        replace = {{old = "titanium-alloy", new = "titanium-girder"}},
        resistances = {["acid"] = {decrease = 7, percent = 35}}
    },
    ["boiler-mk2"] = {
        resistances = {["acid"] = {decrease = 5, percent = 25}}
    },
    ["boiler-mk3"] = {
        replace = {{old = "titanium-alloy", new = "titanium-girder"}},
        resistances = {["acid"] = {decrease = 7, percent = 35}}
    },
    ["cargo-wagon-mk2"] = {
        remove = {"iron-plate", "steel-plate"},
        add = {{name = "titanium-alloy", amount = 20}, {name = "titanium-girder", amount = 20}, {name = "titanium-gear", amount = 10}},
        resistances = {["acid"] = {decrease = 5, percent = 25}}
    },
    ["cargo-wagon-mk3"] = {
        remove = {"iron-plate", "steel-plate", "titanium-alloy"},
        add = {{name = "titanium-alloy", amount = 50}, {name = "titanium-girder", amount = 50}, {name = "titanium-gear", amount = 50}},
        resistances = {["acid"] = {decrease = 7, percent = 35}}
    },
    ["fluid-wagon-mk2"] = {
        replace = {{old = "steel-plate", new = "titanium-alloy"}},
        add = {{name = "advanced-circuit", amount = 1}},
        resistances = {["acid"] = {decrease = 5, percent = 25}}
    },
    ["fluid-wagon-mk3"] = {
        replace = {{old = "titanium-alloy", new = "titanium-girder"}},
        add = {{name = "processing-unit", amount = 1}},
        resistances = {["acid"] = {decrease = 7, percent = 35}}
    },
    ["locomotive-mk2"] = {
        replace = {{old = "steel-plate", new = "titanium-alloy"}},
        resistances = {["acid"] = {decrease = 5, percent = 25}}
    },
    ["locomotive-mk3"] = {
        replace = {{old = "titanium-alloy", new = "titanium-girder"}},
        resistances = {["acid"] = {decrease = 7, percent = 35}}
    },
    ["medium-electric-pole-mk2"] = {
        remove = {"electronic-circuit"},
        add = {{name = "titanium-rod", amount = 4}, {name = "titanium-girder", amount = 2}, {name = "advanced-circuit", amount = 1}},
        resistances = {["acid"] = {decrease = 5, percent = 25}}
    },
    ["medium-electric-pole-mk3"] = {
        remove = {"advanced-circuit"},
        add = {{name = "titanium-rod", amount = 4}, {name = "titanium-girder", amount = 2}, {name = "processing-unit", amount = 1}},
        resistances = {["acid"] = {decrease = 7, percent = 35}}
    },
    ["big-electric-pole-mk2"] = {
        remove = {"electronic-circuit"},
        add = {{name = "titanium-rod", amount = 8}, {name = "titanium-girder", amount = 5}, {name = "advanced-circuit", amount = 3}},
        resistances = {["acid"] = {decrease = 5, percent = 25}}
    },
    ["big-electric-pole-mk3"] = {
        remove = {"advanced-circuit"},
        add = {{name = "titanium-rod", amount = 8}, {name = "titanium-girder", amount = 5}, {name = "processing-unit", amount = 3}},
        resistances = {["acid"] = {decrease = 7, percent = 35}}
    },
    ["substation-mk2"] = {
        add = {{name = "titanium-girder", amount = 10}},
        resistances = {["acid"] = {decrease = 5, percent = 25}}
    },
    ["substation-mk3"] = {
        add = {{name = "titanium-girder", amount = 10}},
        resistances = {["acid"] = {decrease = 7, percent = 35}}
    },
    ["electric-furnace-mk2"] = {
        replace = {{old = "steel-plate", new = "titanium-alloy"}},
        resistances = {["acid"] = {decrease = 5, percent = 25}}
    },
    ["electric-furnace-mk3"] = {
        replace = {{old = "titanium-alloy", new = "titanium-girder"}},
        resistances = {["acid"] = {decrease = 7, percent = 35}}
    },
    ["centrifuge-mk2"] = {
        resistances = {["acid"] = {decrease = 5, percent = 25}}
    },
    ["centrifuge-mk3"] = {
        replace = {{old = "titanium-alloy", new = "titanium-girder"}},
        resistances = {["acid"] = {decrease = 7, percent = 35}}
    },
    ["lab-mk2"] = {
        resistances = {["acid"] = {decrease = 5, percent = 25}}
    },
    ["lab-mk3"] = {
        replace = {{old = "titanium-alloy", new = "titanium-girder"}},
        resistances = {["acid"] = {decrease = 7, percent = 35}}
    },
    ["radar-mk2"] = {
        replace = {{old = "steel-plate", new = "titanium-alloy"}},
        resistances = {["acid"] = {decrease = 5, percent = 25}}
    },
    ["roboport-mk2"] = {
        replace = {{old = "steel-plate", new = "titanium-alloy"}},
        resistances = {["acid"] = {decrease = 5, percent = 25}}
    },
    ["roboport-mk3"] = {
        replace = {{old = "titanium-alloy", new = "titanium-girder"}},
        resistances = {["acid"] = {decrease = 7, percent = 35}}
    },
    ["flying-robot-frame"] = {replace = {{old = "steel-plate", new = "titanium-girder"}}},
    ["low-density-structure"] = {replace = {{old = "steel-plate", new = "titanium-girder"}}},
    --
    -- FactorioExtended-Plus-CompoundSolars
    ["accumulator-mk2"] = {
        replace = {{old = "iron-plate", new = "titanium-alloy"}},
        resistances = {["acid"] = {decrease = 5, percent = 25}}
    },
    ["accumulator-mk3"] = {
        replace = {{old = "steel-plate", new = "titanium-girder"}},
        resistances = {["acid"] = {decrease = 7, percent = 35}}
    },
    ["accumulator-mk4"] = {
        replace = {{old = "steel-plate", new = "titanium-girder"}},
        resistances = {["acid"] = {decrease = 9, percent = 45}}
    },
    ["accumulator-mk5"] = {
        replace = {{old = "steel-plate", new = "titanium-girder"}},
        resistances = {["acid"] = {decrease = 11, percent = 55}}
    },
    ["accumulator-mk6"] = {
        replace = {{old = "steel-plate", new = "titanium-girder"}},
        resistances = {["acid"] = {decrease = 13, percent = 65}}
    },
    ["accumulator-mk7"] = {
        replace = {{old = "steel-plate", new = "low-density-structure"}},
        resistances = {["acid"] = {decrease = 15, percent = 75}}
    },
    ["accumulator-mk8"] = {
        replace = {{old = "steel-plate", new = "low-density-structure"}},
        resistances = {["acid"] = {decrease = 17, percent = 85}}
    },
    ["solar-panel-mk2"] = {
        replace = {{old = "steel-plate", new = "titanium-alloy"}},
        resistances = {["acid"] = {decrease = 5, percent = 25}}
    },
    ["solar-panel-mk3"] = {
        replace = {{old = "titanium-alloy", new = "titanium-girder"}},
        resistances = {["acid"] = {decrease = 7, percent = 35}}
    },
    ["solar-panel-mk4"] = {
        replace = {{old = "titanium-alloy", new = "titanium-girder"}},
        resistances = {["acid"] = {decrease = 9, percent = 45}}
    },
    ["solar-panel-mk5"] = {
        replace = {{old = "titanium-alloy", new = "titanium-girder"}},
        resistances = {["acid"] = {decrease = 11, percent = 55}}
    },
    ["solar-panel-mk6"] = {
        replace = {{old = "titanium-alloy", new = "titanium-girder"}},
        resistances = {["acid"] = {decrease = 13, percent = 65}}
    },
    ["solar-panel-mk7"] = {
        replace = {{old = "titanium-alloy", new = "low-density-structure"}},
        resistances = {["acid"] = {decrease = 15, percent = 75}}
    },
    ["solar-panel-mk8"] = {
        replace = {{old = "titanium-alloy", new = "low-density-structure"}},
        resistances = {["acid"] = {decrease = 17, percent = 85}}
    }
}

-- I need a reverse lookup table to find the type for a given entity
local reverse_lookup = {}
for type, type_table in pairs(data.raw) do
    if not contains({"item", "recipe", "technology", "noise-expression", "item-group", "optimized-particle", "explosion", "corpse", "item-with-entity-data"}, type) then
        for name, name_table in pairs(data.raw[type]) do
            if not reverse_lookup[name] then
                reverse_lookup[name] = {}
            end
            table.insert(reverse_lookup[name], type)
        end
    end
end

for recipe, recipe_table in pairs(updates) do
    if reverse_lookup[recipe] and #reverse_lookup[recipe] == 1 and recipe_table.resistances then
        local entity = data.raw[reverse_lookup[recipe][1]][recipe]
        entity.hide_resistances = false
        if not entity.resistances then
            entity.resistances = {}
        end
        local entity_resistances = {}
        for _, resistance in pairs(entity.resistances) do
            entity_resistances[resistance.type] = resistance
        end
        for resistance, resistance_table in pairs(recipe_table.resistances) do
            if entity_resistances[resistance] then
                -- if the entity has this reistance
                if entity_resistances[resistance].decrease and entity_resistances[resistance].decrease < resistance_table.decrease then
                    entity_resistances[resistance].decrease = resistance_table.decrease
                end
                if entity_resistances[resistance].percent and entity_resistances[resistance].percent < resistance_table.percent then
                    entity_resistances[resistance].percent = resistance_table.percent
                end
            else
                -- if the entity does not have this reistance
                table.insert(entity.resistances, {type = resistance, decrease = resistance_table.decrease, percent = resistance_table.percent})
            end
        end
    end
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

-- log({})
