--!strict

local core = require(script.Parent.Core)
local types = require(script.Parent.Types)
local initHooks = require(script.Parent.GUIInitHooks).initHooks

local gui = {
  screenGui = function (props: ScreenGui & types.BaseUIProps, children: types.Children): ScreenGui
    local newScreenGui = Instance.new("ScreenGui")

    core.assignPropsToGuiItem(props, newScreenGui)
    core.assignChildrenToParent(children, newScreenGui)
    core.assignGuiItemToRef(newScreenGui, props.Ref)
    core.runInitHooksOnGuiItem(initHooks, newScreenGui, { props = props })

    return newScreenGui
  end,
  frame = function (props: Frame & types.BaseUIProps, children: types.Children): Frame
    local newFrame = Instance.new("Frame")

    core.assignPropsToGuiItem(props, newFrame)
    core.assignChildrenToParent(children, newFrame)
    core.assignGuiItemToRef(newFrame, props.Ref)
    core.runInitHooksOnGuiItem(initHooks, newFrame, { props = props })

    return newFrame
  end,
  textButton = function (props: TextButton & types.BaseUIProps, children: {[number]: string}): TextButton
    local newTextButton = Instance.new("TextButton")

    core.assignPropsToGuiItem(props, newTextButton)
    core.assignChildrenToParent(children, newTextButton, { textNodeGuiItemProperty = "Text" })
    core.assignGuiItemToRef(newTextButton, props.Ref)
    core.runInitHooksOnGuiItem(initHooks, newTextButton, { props = props })

    return newTextButton
  end,
  textLabel = function (props: TextLabel & types.BaseUIProps, children: {[number]: string}): TextLabel
    local newTextLabel = Instance.new("TextLabel")

    core.assignPropsToGuiItem(props, newTextLabel)
    core.assignChildrenToParent(children, newTextLabel, { textNodeGuiItemProperty = "Text" })
    core.assignGuiItemToRef(newTextLabel, props.Ref)
    core.runInitHooksOnGuiItem(initHooks, newTextLabel, { props = props })

    return newTextLabel
  end,
  imageLabel = function (props: ImageLabel & types.BaseUIProps, children: {[number]: string}): ImageLabel
    local newImageLabel = Instance.new("ImageLabel")

    core.assignPropsToGuiItem(props, newImageLabel)
    core.assignChildrenToParent(children, newImageLabel, { textNodeGuiItemProperty = "Image" })
    core.assignGuiItemToRef(newImageLabel, props.Ref)
    core.runInitHooksOnGuiItem(initHooks, newImageLabel, { props = props })

    return newImageLabel
  end,
}

return gui

