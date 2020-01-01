local rich_autoplace = data.raw["map-gen-presets"]["default"]["rich-resources"]["basic_settings"]["autoplace_controls"]
local rail_autoplace = data.raw["map-gen-presets"]["default"]["rail-world"]["basic_settings"]["autoplace_controls"]
local ribb_autoplace = data.raw["map-gen-presets"]["default"]["ribbon-world"]["basic_settings"]["autoplace_controls"]

rich_autoplace["titanium-ore"] = { richness = "very-good" }
rail_autoplace["titanium-ore"] = { frequency = 0.33333333332999997, size = 3 }
ribb_autoplace["titanium-ore"] = { frequency = 3, richness = 2, size = 0.5 }
