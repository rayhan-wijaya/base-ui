--!strict

local types = require(script.Parent.Types)

local assignPropsToGuiObject = function (props: {[string]: any}, guiObject: GuiObject)
  for propKey, propValue in pairs(props) do
    if table.find(types.allBaseUIProps, propKey) ~= nil then
      continue
    end

    guiObject[propKey] = propValue
  end
end

local assignChildrenToParent = function (children: types.Children, parent: GuiObject)
  for _, child in pairs(children) do
    child.Parent = parent
  end
end

local assignGuiObjectToRef = function (guiObject: GuiObject, ref: types.Ref)
  if not ref then
    return
  end

  ref.refs[ref.refKey] = guiObject
end

return {
  assignPropsToGuiObject = assignPropsToGuiObject,
  assignChildrenToParent = assignChildrenToParent,
  assignGuiObjectToRef = assignGuiObjectToRef,
}

