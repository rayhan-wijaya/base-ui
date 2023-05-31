--!strict

local types = require(script.Parent.Types)

local assignPropsToGuiBase = function (props: {[string]: any}, GuiBase: GuiBase)
  for propKey, propValue in pairs(props) do
    if table.find(types.allBaseUIProps, propKey) ~= nil then
      continue
    end

    GuiBase[propKey] = propValue
  end
end

local assignChildrenToParent = function (children: types.Children, parent: GuiBase)
  for _, child in pairs(children) do
    child.Parent = parent
  end
end

local assignGuiBaseToRef = function (GuiBase: GuiBase, ref: types.Ref)
  if not ref then
    return
  end

  ref.refs[ref.refKey] = GuiBase
end

return {
  assignPropsToGuiBase = assignPropsToGuiBase,
  assignChildrenToParent = assignChildrenToParent,
  assignGuiBaseToRef = assignGuiBaseToRef,
}

