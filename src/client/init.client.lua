local baseUI = game.ReplicatedStorage.Common.BaseUI
local gui = require(baseUI.GUI)
local utils = require(baseUI.Utils)
local guiInitHooks = require(baseUI.GUIInitHooks)

local tailwindIntegration = baseUI.OptionalModules.TailwindIntegration
require(tailwindIntegration.InitTailwindIntegration)()

local player = game.Players.LocalPlayer
local playerGui = player.PlayerGui

guiInitHooks.registerInitHook(function (guiItem, props)
  print("A new GUI primitive has been initialized! It's called " .. guiItem.Name)
end)

local frameRefs = {
  textLabel = nil :: TextLabel?,
}

local frame = function ()
  local createRef = utils.generateCreateRef(frameRefs)
  local textLabelRef = createRef("textLabel")

  local newFrame = (
    gui.frame({ TStyles = "bg-transparent w-full h-full" }, {
      gui.textLabel({ TStyles = "bg-red-300 text-scaled h-1/2 w-1/2", Ref = textLabelRef }, {
        "Hello"
      }),
    })
  )

  return newFrame
end

local screenGui = gui.screenGui({}, {
  frame()
})

screenGui.Parent = playerGui

while task.wait(1) do
  if not frameRefs.textLabel then
    continue
  end

  frameRefs.textLabel.Text = frameRefs.textLabel.Text .. " Test"
end
