local styleMappings = require(script.Parent.StyleMappings)

local applyStylePropertiesToGuiObject = function (styleProperties: GuiObject, guiObject: GuiObject)
  for propertyKey, propertyValue in pairs(styleProperties) do
    local isSuccessful = pcall(function ()
      guiObject[propertyKey] = propertyValue
    end)

    if not isSuccessful then
      local warning = string.format(
        "Failed to assign %s to %s",
        propertyKey,
        guiObject.ClassName
      )

      warn(warning)
    end
  end
end

return {
  applyStylePropertiesToGuiObject = applyStylePropertiesToGuiObject,
}