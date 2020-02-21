local Constants = require("constants")

data:extend(
    {
        {
            map_grid = false,
            type = "resource",
            name = "titanium-ore",
            icon = Constants.AssetModName .. "/graphics/icons/titanium-ore.png",
            icon_size = 32,
            flags = {"placeable-neutral"},
            order = "a-b-b",
            tree_removal_probability = 1,
            tree_removal_max_distance = 32 * 32,
            minable = {
                mining_particle = "stone-particle",
                mining_time = 0.75,
                result = "titanium-ore",
                fluid_amount = 150,
                required_fluid = "steam"
            },
            collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
            selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
            autoplace = resource_autoplace.resource_autoplace_settings {
                name = "titanium-ore",
                order = "b",
                base_density = 2, -- 0.9,
                base_spots_per_km2 = 4, -- 1.25
                has_starting_area_placement = true,
                random_spot_size_minimum = 2,
                random_spot_size_maximum = 4,
                regular_rq_factor_multiplier = 1
            },
            -- autoplace = resource_autoplace.resource_autoplace_settings {
            --     name = "titanium-ore",
            --     order = "b",
            --     base_density = 2, -- richness of spot
            --     base_spots_per_km2 = 0.1, -- frequency of spots
            --     has_starting_area_placement = true,
            --     random_spot_size_minimum = 0.1, -- size of spot
            --     random_spot_size_maximum = 0.5, -- size of spot
            --     regular_blob_amplitude_multiplier = 1, -- deformity
            --     starting_blob_amplitude_multiplier = 0.5, -- deformity
            --     richness_post_multiplier = 1, -- richness multiplier
            --     regular_rq_factor_multiplier = 1, -- compactness
            --     starting_rq_factor_multiplier = 0.5, -- compactness
            --     candidate_spot_count = 22
            -- },
            stage_counts = {10000, 6330, 3670, 1930, 870, 270, 100, 50},
            stages = {
                sheet = {
                    filename = Constants.AssetModName .. "/graphics/resources/titanium-ore.png",
                    priority = "extra-high",
                    width = 64,
                    height = 64,
                    frame_count = 8,
                    variation_count = 8,
                    hr_version = {
                        filename = Constants.AssetModName .. "/graphics/resources/hr-titanium-ore.png",
                        priority = "extra-high",
                        width = 128,
                        height = 128,
                        frame_count = 8,
                        variation_count = 8,
                        scale = 0.5
                    }
                }
            },
            -- map_color = {r=0.525, g=0.525, b=0.525}
            map_color = {r = 0.95, g = 0.95, b = 0.95}
        },
        {
            type = "autoplace-control",
            name = "titanium-ore",
            richness = true,
            order = "b-i",
            category = "resource"
        },
        {
            type = "noise-layer",
            name = "titanium-ore"
        }
    }
)
