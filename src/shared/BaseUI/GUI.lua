--!strict

local core = require(script.Parent.Core)
local types = require(script.Parent.Types)

local gui = {
  screenGui = function (props: ScreenGui & types.BaseUIProps, children: types.Children): ScreenGui
    local newScreenGui = Instance.new("ScreenGui")

    core.assignPropsToGuiObject(props, newScreenGui)
    core.assignChildrenToParent(children, newScreenGui)
    core.assignGuiObjectToRef(newScreenGui, props.Ref)

    return newScreenGui
  end,
}

return gui

