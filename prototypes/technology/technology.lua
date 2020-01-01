local tech = data.raw.technology["titanium-processing"]

if settings.startup["remove-orig-titanium-ore-recipe"] and settings.startup["remove-orig-titanium-ore-recipe"].value then
    _effects = {}
    for k,v in pairs(tech.effects) do
        if v.recipe ~= "titanium-ore" then table.insert(_effects, v) end
    end
    tech.effects = _effects
    if data.raw.recipe["titanium-ore"] then data.raw.recipe["titanium-ore"] = nil end

    for module, module_table in pairs(data.raw.module) do
        if module_table.limitation then
            _limitation = {}
            for k, v in pairs(module_table.limitation) do
                if v ~= "titanium-ore" then table.insert(_limitation, v) end
            end
            module_table.limitation = _limitation
        end
    end

end

table.insert(tech.effects, {type = "unlock-recipe", recipe = "titanium-gear"})
table.insert(tech.effects, {type = "unlock-recipe", recipe = "titanium-rod"})
table.insert(tech.effects, {type = "unlock-recipe", recipe = "titanium-girder"})
table.insert(tech.effects, {type = "unlock-recipe", recipe = "pollution-filter"})
