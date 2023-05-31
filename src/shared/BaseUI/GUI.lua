--!strict

local core = require(script.Parent.Core)
local applyStyles = nil

if script.Parent.OptionalModules:FindFirstChild("Styles") then
  applyStyles = require(script.Parent.OptionalModules.TailwindStyles.ApplyStyles)
end

local types = require(script.Parent.Types)

local gui = {
  screenGui = function (props: ScreenGui & types.BaseUIProps, children: types.Children): ScreenGui
    local newScreenGui = Instance.new("ScreenGui")

    core.assignPropsToGuiBase(props, newScreenGui)
    core.assignChildrenToParent(children, newScreenGui)
    core.assignGuiBaseToRef(newScreenGui, props.Ref)
    if applyStyles then applyStyles.applyStylesToGuiBase(props.Styles, newScreenGui) end

    return newScreenGui
  end,
  frame = function (props: Frame & types.BaseUIProps, children: types.Children): Frame
    local newFrame = Instance.new("Frame")

    core.assignPropsToGuiBase(props, newFrame)
    core.assignChildrenToParent(children, newFrame)
    core.assignGuiBaseToRef(newFrame, props.Ref)
    if applyStyles then applyStyles.applyStylesToGuiBase(props.Styles, newFrame) end

    return newFrame
  end,
  textButton = function (props: TextButton & types.BaseUIProps, children: {[number]: string}): TextButton
    local newTextButton = Instance.new("TextButton")

    core.assignPropsToGuiBase(props, newTextButton)
    newTextButton.Text = children[1];
    core.assignGuiBaseToRef(newTextButton, props.Ref)
    if applyStyles then applyStyles.applyStylesToGuiBase(props.Styles, newTextButton) end

    return newTextButton
  end,
  textLabel = function (props: TextLabel & types.BaseUIProps, children: {[number]: string}): TextLabel
    local newTextLabel = Instance.new("TextLabel")

    core.assignPropsToGuiBase(props, newTextLabel)
    newTextLabel.Text = children[1];
    core.assignGuiBaseToRef(newTextLabel, props.Ref)
    if applyStyles then applyStyles.applyStylesToGuiBase(props.Styles, newTextLabel) end

    return newTextLabel
  end,
  imageLabel = function (props: ImageLabel & types.BaseUIProps, children: {[number]: string}): ImageLabel
    local newImageLabel = Instance.new("ImageLabel")

    core.assignPropsToGuiBase(props, newImageLabel)
    newImageLabel.Image = children[1];
    core.assignGuiBaseToRef(newImageLabel, props.Ref)
    if applyStyles then applyStyles.applyStylesToGuiBase(props.Styles, newImageLabel) end

    return newImageLabel
  end,
}

return gui

