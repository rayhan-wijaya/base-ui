local styleMappings = require(script.Parent.StyleMappings)

local applyStylePropertiesToGuiBase = function (styleProperties: GuiBase, GuiBase: GuiBase)
  for propertyKey, propertyValue in pairs(styleProperties) do
    local isSuccessful = pcall(function ()
      GuiBase[propertyKey] = propertyValue
    end)

    if not isSuccessful then
      local warning = string.format(
        "Failed to assign %s to %s",
        propertyKey,
        GuiBase.ClassName
      )

      warn(warning)
    end
  end
end

local applyStylesToGuiBase = function (stylesString: string, GuiBase: GuiBase)
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
        GuiBase.ClassName
      )

      warn(warning)

      continue
    end

    local styleProperties = styleMappings[style]
    applyStylePropertiesToGuiBase(styleProperties, GuiBase)
  end
end

return {
  applyStylePropertiesToGuiBase = applyStylePropertiesToGuiBase,
  applyStylesToGuiBase = applyStylesToGuiBase,
}
