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
  textButton = function (props: TextButton & types.BaseUIProps, children: {[number]: string}): TextButton
    local newTextButton = Instance.new("TextButton")

    core.assignPropsToGuiObject(props, newTextButton)
    newTextButton.Text = children[1];
    core.assignGuiObjectToRef(newTextButton, props.Ref)

    return newTextButton
  end,
  textLabel = function (props: TextLabel & types.BaseUIProps, children: {[number]: string}): TextLabel
    local newTextLabel = Instance.new("TextLabel")

    core.assignPropsToGuiObject(props, newTextLabel)
    newTextLabel.Text = children[1];
    core.assignGuiObjectToRef(newTextLabel, props.Ref)

    return newTextLabel
  end,
}

return gui

