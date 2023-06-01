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

local assignChildrenToParent = function (
  children: types.Children,
  parent: types.GuiItem,
  textNodeOptions: { textNodeGuiItemProperty: string }?
)
  if textNodeOptions ~= nil and textNodeOptions["textNodeGuiItemProperty"] ~= nil then
    parent[textNodeOptions.textNodeGuiItemProperty] = children[1]
    return
  end

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

local runInitHooksOnGuiItem = function (
  initHooks: {types.InitHook},
  guiItem: types.GuiItem,
  options: { props: types.GuiItem & types.BaseUIProps }
)
  for _, initHook in ipairs(initHooks) do
    initHook(guiItem, options.props)
  end
end

return {
  assignPropsToGuiItem = assignPropsToGuiItem,
  assignChildrenToParent = assignChildrenToParent,
  assignGuiItemToRef = assignGuiItemToRef,
  runInitHooksOnGuiItem = runInitHooksOnGuiItem,
}

