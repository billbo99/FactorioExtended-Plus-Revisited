local Constants = require("constants")

-- local fluid_box = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"]["fluid_boxes"])

-- local furnace = table.deepcopy(data.raw["furnace"]["electric-furnace"])
-- furnace.fluid_box = fluid_box
-- table.insert(furnace.crafting_categories, "crafting-with-fluid")

-- local furnace = data.raw["furnace"]["electric-furnace-mk2"]
-- furnace.fluid_box = fluid_box
-- table.insert(furnace.crafting_categories, "crafting-with-fluid")

-- local furnace = table.deepcopy(data.raw["furnace"]["electric-furnace-mk3"])
-- furnace.fluid_box = fluid_box
-- table.insert(furnace.crafting_categories, "crafting-with-fluid")

-- local blend_mode = "additive-soft"

if not data.raw["recipe-category"]["chemical-furnace"] then
    data:extend({{type = "recipe-category", name = "chemical-furnace"}})
end

if not data.raw["recipe-category"]["mixing-furnace"] then
    data:extend({{type = "recipe-category", name = "mixing-furnace"}})
end

local efurnace = table.deepcopy(data.raw["furnace"]["electric-furnace"])

local test = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])
test.name = "Test Furnace"
test.minable.result = test.name
test.icons = {{icon = efurnace.icon, tint = {r = 255, g = 255, b = 55}}}
test.crafting_categories = {"mixing-furnace", "chemical-furnace"}
test.animation = efurnace.animation
test.animation.layers[1].hr_version.filename = Constants.AssetModName .. "/graphics/entity/blast-furnace/hr-blast-furnace.png"
test.working_sound = efurnace.working_sound
test.working_visualisations = efurnace.working_visualisations
test.working_visualisations[1].animation.hr_version.tint = {r = 163, g = 108, b = 108}
test.fluid_boxes = {
    {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{type = "input", position = {-2, -1}}}
    },
    {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{type = "input", position = {-2, 1}}}
    },
    off_when_no_fluid_recipe = true
}

data:extend({test})

test = table.deepcopy(data.raw["item"]["electric-furnace"])
test.name = "Test Furnace"
test.place_result = test.name
test.icons = {{icon = test.icon, tint = {r = 255, g = 255, b = 55}}}
test.order = test.order .. "-z"
test.subgroup = "fb-machines"
data:extend({test})

local furnace = table.deepcopy(data.raw["furnace"]["electric-furnace"])
furnace.name = "Blast Furnace"
furnace.minable.result = furnace.name
furnace.crafting_categories = {"smelting", "mixing-furnace", "chemical-furnace"}
furnace.animation.layers[1].hr_version.filename = Constants.AssetModName .. "/graphics/entity/blast-furnace/hr-blast-furnace.png"
furnace.fluid_boxes = {
    {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{type = "input", position = {-2, -1}}}
    },
    off_when_no_fluid_recipe = true
}

data:extend({furnace})

local furnace = table.deepcopy(data.raw["item"]["electric-furnace"])
furnace.name = "Blast Furnace"
furnace.place_result = furnace.name
furnace.icons = {{icon = furnace.icon, tint = {r = 255, g = 255, b = 55}}}
furnace.order = furnace.order .. "-z"
furnace.subgroup = "fb-machines"
data:extend({furnace})

-- data:extend({
--     {
--         type = "fluid",
--         name = "copper-plate",
--         default_temperature = 100,
--         max_temperature = 100,
--         heat_capacity = "0.2KJ",
--         base_color = {r=0.7, g=0, b=0},
--         flow_color = {r=0.7, g=0.3, b=0.3},
--         icon = "__base__/graphics/icons/copper-plate.png",
--         icon_size = 32,
--         order = "a[fluid]-z[copper]",
--         pressure_to_speed_ratio = 0.4,
--         flow_to_energy_ratio = 0.59
--     }
-- })

data:extend(
    {
        -- {
        --     type = "recipe",
        --     name = "copper-plate",
        --     category = "smelting",
        --     energy_required = 3.2,
        --     ingredients = {{ "copper-ore", 1}},
        --     results={{type="fluid", name="copper-plate", amount=10, temperature=100}},
        -- },
        {
            type = "recipe",
            name = "titanium-plate",
            category = "chemical-furnace",
            energy_required = 2.5,
            ingredients = {
                {"titanium-ore", 1},
                {type = "fluid", name = "sulfuric-acid", amount = 2.5},
                {type = "fluid", name = "water", amount = 1}
            },
            result = "titanium-alloy"
        },
        {
            type = "recipe",
            name = "titanium-plate2",
            category = "chemical-furnace",
            energy_required = 1,
            ingredients = {
                {"titanium-ore", 1},
                {"uranium-ore", 1},
                {type = "fluid", name = "sulfuric-acid", amount = 5}
            },
            result = "titanium-alloy"
        },
        {
            type = "recipe",
            name = "titanium-girder2",
            category = "mixing-furnace",
            energy_required = 1,
            ingredients = {
                {"titanium-alloy", 3},
                {"copper-plate", 1}
            },
            result = "titanium-girder"
        }
    }
)
