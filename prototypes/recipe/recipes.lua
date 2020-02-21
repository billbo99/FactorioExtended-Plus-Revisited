data:extend(
    {
        {
            type = "recipe",
            name = "titanium-alloy",
            category = "smelting",
            enabled = false,
            energy_required = 5,
            ingredients = {
                {"titanium-ore", 1}
            },
            result = "titanium-alloy"
        },
        {
            type = "recipe",
            name = "titanium-girder",
            category = "smelting",
            enabled = false,
            energy_required = 5,
            ingredients = {
                {"titanium-alloy", 3}
            },
            result = "titanium-girder"
        },
        {
            type = "recipe",
            name = "titanium-gear",
            enabled = false,
            energy_required = 1,
            ingredients = {
                {"titanium-alloy", 2}
            },
            result = "titanium-gear"
        },
        {
            type = "recipe",
            name = "titanium-rod",
            enabled = false,
            energy_required = 1,
            ingredients = {
                {"titanium-alloy", 1}
            },
            result = "titanium-rod",
            result_count = 2
        }
    }
)
