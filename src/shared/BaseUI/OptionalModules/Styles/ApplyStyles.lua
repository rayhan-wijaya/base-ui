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

local applyStylesToGuiObject = function (stylesString: string, guiObject: GuiObject)
  if stylesString == "" or stylesString == nil then
    return
  end

  local styles = string.gmatch(stylesString, "([^ ]+)")

  for style in styles do
    style = style :: string

    if styleMappings[style] == nil then
      local warning = string.format(
        "%s doesn't exist as a style at %s",
        style,
        guiObject.ClassName
      )

      warn(warning)

      continue
    end

    local styleProperties = styleMappings[style]
    applyStylePropertiesToGuiObject(styleProperties, guiObject)
  end
end

return {
  applyStylePropertiesToGuiObject = applyStylePropertiesToGuiObject,
  applyStylesToGuiObject = applyStylesToGuiObject,
}