data:extend(
    {
        {
            effects = {
                {recipe = "nuclear-reactor-mk2", type = "unlock-recipe"},
                {recipe = "heat-exchanger-mk2", type = "unlock-recipe"},
                {recipe = "heat-pipe-mk2", type = "unlock-recipe"},
                {recipe = "steam-turbine-mk2", type = "unlock-recipe"}
            },
            icons = {{icon = "__base__/graphics/technology/nuclear-power.png", icon_size = 128, tint = {r = 0.4, g = 0.804, b = 0.667, a = 0.8}}},
            name = "nuclear-power-2",
            order = "e-p-b-c2",
            prerequisites = {
                "electrical-engineer",
                "nuclear-power"
            },
            type = "technology",
            unit = {
                count = 1600,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1}
                },
                time = 30
            }
        },
        {
            effects = {
                {recipe = "nuclear-reactor-mk3", type = "unlock-recipe"},
                {recipe = "heat-exchanger-mk3", type = "unlock-recipe"},
                {recipe = "steam-turbine-mk3", type = "unlock-recipe"}
            },
            icons = {{icon = "__base__/graphics/technology/nuclear-power.png", icon_size = 128, tint = {r = 0.5, g = 0.5, b = 0.9, a = 0.8}}},
            name = "nuclear-power-3",
            order = "e-p-b-c2",
            prerequisites = {
                "electrical-engineer-2",
                "nuclear-power-2"
            },
            type = "technology",
            unit = {
                count = 3200,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"utility-science-pack", 1}
                },
                time = 30
            }
        }
    }
)
