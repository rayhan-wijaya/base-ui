--!strict

local types = require(script.Parent.Types)

local assignPropsToGuiItem = function (props: {[string]: any}, guiItem: types.GuiItem)
  for propKey, propValue in pairs(props) do
    if table.find(types.allBaseUIProps, propKey) ~= nil then
      continue
    end

    guiItem[propKey] = propValue
  end
end

local assignChildrenToParent = function (children: types.Children, parent: types.GuiItem)
  for _, child in pairs(children) do
    child.Parent = parent
  end
end

local assignGuiItemToRef = function (guiItem: types.GuiItem, ref: types.Ref)
  if not ref then
    return
  end

  ref.refs[ref.refKey] = guiItem
end

return {
  assignPropsToGuiItem = assignPropsToGuiItem,
  assignChildrenToParent = assignChildrenToParent,
  assignGuiItemToRef = assignGuiItemToRef,
}

