local styleMappings = require(script.Parent.StyleMappings)

local applyStylePropertiesToGuiBase = function (styleProperties: GuiBase, guiBase: GuiBase)
  for propertyKey, propertyValue in pairs(styleProperties) do
    local isSuccessful = pcall(function ()
      guiBase[propertyKey] = propertyValue
    end)

    if not isSuccessful then
      local warning = string.format(
        "Failed to assign %s to %s",
        propertyKey,
        guiBase.ClassName
      )

      warn(warning)
    end
  end
end

local applyStylesToGuiBase = function (stylesString: string, guiBase: GuiBase)
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
        guiBase.ClassName
      )

      warn(warning)

      continue
    end

    local styleProperties = styleMappings[style]
    applyStylePropertiesToGuiBase(styleProperties, guiBase)
  end
end

return {
  applyStylePropertiesToGuiBase = applyStylePropertiesToGuiBase,
  applyStylesToGuiBase = applyStylesToGuiBase,
}
