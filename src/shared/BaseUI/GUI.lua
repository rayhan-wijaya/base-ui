--!strict

local core = require(script.Parent.Core)
local applyStyles = nil

if script.Parent.OptionalModules:FindFirstChild("TailwindIntegration") then
  applyStyles = require(script.Parent.OptionalModules.TailwindIntegration.ApplyStyles)
end

local types = require(script.Parent.Types)

local gui = {
  screenGui = function (props: ScreenGui & types.BaseUIProps, children: types.Children): ScreenGui
    local newScreenGui = Instance.new("ScreenGui")

    core.assignPropsToGuiItem(props, newScreenGui)
    core.assignChildrenToParent(children, newScreenGui)
    core.assignGuiItemToRef(newScreenGui, props.Ref)
    if applyStyles then applyStyles.applyStylesToGuiItem(props.Styles, newScreenGui) end

    return newScreenGui
  end,
  frame = function (props: Frame & types.BaseUIProps, children: types.Children): Frame
    local newFrame = Instance.new("Frame")

    core.assignPropsToGuiItem(props, newFrame)
    core.assignChildrenToParent(children, newFrame)
    core.assignGuiItemToRef(newFrame, props.Ref)
    if applyStyles then applyStyles.applyStylesToGuiItem(props.Styles, newFrame) end

    return newFrame
  end,
  textButton = function (props: TextButton & types.BaseUIProps, children: {[number]: string}): TextButton
    local newTextButton = Instance.new("TextButton")

    core.assignPropsToGuiItem(props, newTextButton)
    core.assignChildrenToParent(children, newTextButton, { textNodeGuiItemProperty = "Text" })
    core.assignGuiItemToRef(newTextButton, props.Ref)
    if applyStyles then applyStyles.applyStylesToGuiItem(props.Styles, newTextButton) end

    return newTextButton
  end,
  textLabel = function (props: TextLabel & types.BaseUIProps, children: {[number]: string}): TextLabel
    local newTextLabel = Instance.new("TextLabel")

    core.assignPropsToGuiItem(props, newTextLabel)
    core.assignChildrenToParent(children, newTextLabel, { textNodeGuiItemProperty = "Text" })
    core.assignGuiItemToRef(newTextLabel, props.Ref)
    if applyStyles then applyStyles.applyStylesToGuiItem(props.Styles, newTextLabel) end

    return newTextLabel
  end,
  imageLabel = function (props: ImageLabel & types.BaseUIProps, children: {[number]: string}): ImageLabel
    local newImageLabel = Instance.new("ImageLabel")

    core.assignPropsToGuiItem(props, newImageLabel)
    core.assignChildrenToParent(children, newImageLabel, { textNodeGuiItemProperty = "Image" })
    core.assignGuiItemToRef(newImageLabel, props.Ref)
    if applyStyles then applyStyles.applyStylesToGuiItem(props.Styles, newImageLabel) end

    return newImageLabel
  end,
}

return gui

