--!strict

local types = require(script.Parent.Types)

local assignPropsToGuiBase = function (props: {[string]: any}, guiBase: GuiBase)
  for propKey, propValue in pairs(props) do
    if table.find(types.allBaseUIProps, propKey) ~= nil then
      continue
    end

    guiBase[propKey] = propValue
  end
end

local assignChildrenToParent = function (children: types.Children, parent: GuiBase)
  for _, child in pairs(children) do
    child.Parent = parent
  end
end

local assignGuiBaseToRef = function (guiBase: GuiBase, ref: types.Ref)
  if not ref then
    return
  end

  ref.refs[ref.refKey] = guiBase
end

return {
  assignPropsToGuiBase = assignPropsToGuiBase,
  assignChildrenToParent = assignChildrenToParent,
  assignGuiBaseToRef = assignGuiBaseToRef,
}

