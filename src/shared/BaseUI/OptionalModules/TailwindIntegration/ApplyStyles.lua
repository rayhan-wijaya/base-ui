local styleMappings = require(script.Parent.StyleMappings)

local applyStylePropertiesToGuiItem = function (styleProperties: GuiBase, guiItem: GuiBase)
  for propertyKey, propertyValue in pairs(styleProperties) do
    local isSuccessful = pcall(function ()
      guiItem[propertyKey] = propertyValue
    end)

    if not isSuccessful then
      local warning = string.format(
        "Failed to assign %s to %s",
        propertyKey,
        guiItem.ClassName
      )

      warn(warning)
    end
  end
end

local applyStylesToGuiItem = function (stylesString: string, guiItem: guiItem)
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
        guiItem.ClassName
      )

      warn(warning)

      continue
    end

    local styleProperties = styleMappings[style]
    applyStylePropertiesToGuiItem(styleProperties, guiItem)
  end
end

return {
  applyStylePropertiesToGuiItem = applyStylePropertiesToGuiItem,
  applyStylesToGuiItem = applyStylesToGuiItem,
}
