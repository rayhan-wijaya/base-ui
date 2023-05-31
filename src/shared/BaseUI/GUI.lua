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
  frame = function (props: Frame & types.BaseUIProps, children: types.Children): Frame
    local newFrame = Instance.new("Frame")

    core.assignPropsToGuiObject(props, newFrame)
    core.assignChildrenToParent(children, newFrame)
    core.assignGuiObjectToRef(newFrame, props.Ref)

    return newFrame
  end,
}

return gui

