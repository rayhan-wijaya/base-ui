--!strict

local core = require(script.Parent.Core)
local applyStyles = nil

if script.Parent.OptionalModules:FindFirstChild("Styles") then
  applyStyles = require(script.Parent.OptionalModules.Styles.ApplyStyles)
end

local types = require(script.Parent.Types)

local gui = {
  screenGui = function (props: ScreenGui & types.BaseUIProps, children: types.Children): ScreenGui
    local newScreenGui = Instance.new("ScreenGui")

    core.assignPropsToGuiObject(props, newScreenGui)
    core.assignChildrenToParent(children, newScreenGui)
    core.assignGuiObjectToRef(newScreenGui, props.Ref)
    if applyStyles then applyStyles.applyStylesToGuiObject(props.Styles, newScreenGui) end

    return newScreenGui
  end,
  frame = function (props: Frame & types.BaseUIProps, children: types.Children): Frame
    local newFrame = Instance.new("Frame")

    core.assignPropsToGuiObject(props, newFrame)
    core.assignChildrenToParent(children, newFrame)
    core.assignGuiObjectToRef(newFrame, props.Ref)
    if applyStyles then applyStyles.applyStylesToGuiObject(props.Styles, newFrame) end

    return newFrame
  end,
  textButton = function (props: TextButton & types.BaseUIProps, children: {[number]: string}): TextButton
    local newTextButton = Instance.new("TextButton")

    core.assignPropsToGuiObject(props, newTextButton)
    newTextButton.Text = children[1];
    core.assignGuiObjectToRef(newTextButton, props.Ref)
    if applyStyles then applyStyles.applyStylesToGuiObject(props.Styles, newTextButton) end

    return newTextButton
  end,
  textLabel = function (props: TextLabel & types.BaseUIProps, children: {[number]: string}): TextLabel
    local newTextLabel = Instance.new("TextLabel")

    core.assignPropsToGuiObject(props, newTextLabel)
    newTextLabel.Text = children[1];
    core.assignGuiObjectToRef(newTextLabel, props.Ref)
    if applyStyles then applyStyles.applyStylesToGuiObject(props.Styles, newTextLabel) end

    return newTextLabel
  end,
  imageLabel = function (props: ImageLabel & types.BaseUIProps, children: {[number]: string}): ImageLabel
    local newImageLabel = Instance.new("ImageLabel")

    core.assignPropsToGuiObject(props, newImageLabel)
    newImageLabel.Image = children[1];
    core.assignGuiObjectToRef(newImageLabel, props.Ref)
    if applyStyles then applyStyles.applyStylesToGuiObject(props.Styles, newImageLabel) end

    return newImageLabel
  end,
}

return gui

