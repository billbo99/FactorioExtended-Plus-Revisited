local Constants = require("constants")

data:extend(
    {
        {
            type = "item",
            name = "titanium-ore",
            icon = Constants.AssetModName .. "/graphics/icons/titanium-ore.png",
            icon_mipmaps = 4,
            icon_size = 64,
            subgroup = "fb-material",
            order = "a-a",
            pictures = {
                {
                    filename = Constants.AssetModName .. "/graphics/icons/titanium-ore.png",
                    mipmap_count = 4,
                    scale = 0.25,
                    size = 64
                },
                {
                    filename = Constants.AssetModName .. "/graphics/icons/titanium-ore-1.png",
                    mipmap_count = 4,
                    scale = 0.25,
                    size = 64
                },
                {
                    filename = Constants.AssetModName .. "/graphics/icons/titanium-ore-2.png",
                    mipmap_count = 4,
                    scale = 0.25,
                    size = 64
                },
                {
                    filename = Constants.AssetModName .. "/graphics/icons/titanium-ore-3.png",
                    mipmap_count = 4,
                    scale = 0.25,
                    size = 64
                }
            },
            hidden = true,
            stack_size = 50
        },
        {
            type = "item",
            name = "titanium-alloy",
            icon = Constants.AssetModName .. "/graphics/icons/titanium-plate.png",
            icon_mipmaps = 4,
            icon_size = 64,
            subgroup = "fb-material",
            order = "a-b",
            stack_size = 100
        },
        {
            type = "item",
            name = "titanium-gear",
            icon = Constants.AssetModName .. "/graphics/icons/titanium-gear.png",
            icon_mipmaps = 4,
            icon_size = 64,
            subgroup = "fb-material",
            order = "a-c",
            stack_size = 100
        },
        {
            type = "item",
            name = "titanium-rod",
            icon = Constants.AssetModName .. "/graphics/icons/titanium-rod.png",
            icon_mipmaps = 4,
            icon_size = 64,
            subgroup = "fb-material",
            order = "a-d",
            stack_size = 100
        },
        {
            type = "item",
            name = "titanium-girder",
            icon = Constants.AssetModName .. "/graphics/icons/titanium-girder.png",
            icon_mipmaps = 4,
            icon_size = 64,
            subgroup = "fb-material",
            order = "a-e",
            stack_size = 100
        }
    }
)
