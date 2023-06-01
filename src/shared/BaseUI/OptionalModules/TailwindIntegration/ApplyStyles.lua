--!strict

local styleMappings = require(script.Parent.StyleMappings)

local baseUiTypes = require(script.Parent.Parent.Parent.Types)
local types = require(script.Parent.Types)

local applyStylePropertiesToGuiItem = function (styleProperties: types.StyleProperties, guiItem: baseUiTypes.GuiItem)
  for propertyKey, propertyValue in pairs(styleProperties) do
    local finalPropertyValue = propertyValue

    if typeof(propertyValue) == "function" then
      finalPropertyValue = propertyValue(guiItem)
    end

    local isSuccessful = pcall(function ()
      guiItem[propertyKey] = finalPropertyValue
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

local applyStylesToGuiItem = function (stylesString: string, guiItem: baseUiTypes.GuiItem)
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
