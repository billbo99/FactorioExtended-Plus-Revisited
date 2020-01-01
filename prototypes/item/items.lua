data:extend({
  {
    type = "item",
    name = "titanium-ore",
    icon = "__FactorioExtended-Plus-Mineable_Ores__/graphics/icons/titanium-ore.png",
    icon_size = 32,
    subgroup = "fb-material",
    order = "a-a",
    hidden = true,
    stack_size = 100
  },
  {
    type = "item",
    name = "titanium-alloy",
    icon = "__FactorioExtended-Plus-Mineable_Ores__/graphics/icons/titanium-plate.png",
    icon_size = 32,
    subgroup = "fb-material",
    order = "a-b",
    stack_size = 100
  },
  {
    type = "item",
    name = "titanium-gear",
    icon = "__FactorioExtended-Plus-Mineable_Ores__/graphics/icons/titanium-gear.png",
    icon_size = 32,
    subgroup = "fb-material",
    order = "a-c",
    stack_size = 100
  },
  {
    type = "item",
    name = "titanium-rod",
    icon = "__FactorioExtended-Plus-Mineable_Ores__/graphics/icons/titanium-rod.png",
    icon_size = 32,
    subgroup = "fb-material",
    order = "a-d",
    stack_size = 100
  },
  {
    type = "item",
    name = "titanium-girder",
    icon = "__FactorioExtended-Plus-Mineable_Ores__/graphics/icons/titanium-girder.png",
    icon_size = 32,
    subgroup = "fb-material",
    order = "a-e",
    stack_size = 100
  }
})

table.insert(data.raw["module"]["productivity-module"].limitation, "titanium-alloy")
table.insert(data.raw["module"]["productivity-module-2"].limitation, "titanium-alloy")
table.insert(data.raw["module"]["productivity-module-3"].limitation, "titanium-alloy")

table.insert(data.raw["module"]["productivity-module"].limitation, "titanium-gear")
table.insert(data.raw["module"]["productivity-module-2"].limitation, "titanium-gear")
table.insert(data.raw["module"]["productivity-module-3"].limitation, "titanium-gear")

table.insert(data.raw["module"]["productivity-module"].limitation, "titanium-rod")
table.insert(data.raw["module"]["productivity-module-2"].limitation, "titanium-rod")
table.insert(data.raw["module"]["productivity-module-3"].limitation, "titanium-rod")

table.insert(data.raw["module"]["productivity-module"].limitation, "titanium-girder")
table.insert(data.raw["module"]["productivity-module-2"].limitation, "titanium-girder")
table.insert(data.raw["module"]["productivity-module-3"].limitation, "titanium-girder")
