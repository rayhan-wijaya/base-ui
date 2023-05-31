local baseUI = game.ReplicatedStorage.Common.BaseUI
local gui = require(baseUI.GUI)

local player = game.Players.LocalPlayer
local playerGui = player.PlayerGui

local frame = function ()
  local refs = {
    textLabel = nil :: TextLabel?,
  }

  local newFrame = (
    gui.frame({ Styles = "bg-red-900 text-scaled" }, {
      gui.textLabel({
        Styles = "bg-red-300 text-scaled",
        Ref = { refKey = "textLabel", refs = refs }
      }, {
        "Hello"
      }),
    })
  )

  local updateTextLabel = coroutine.create(function ()
    while task.wait(1) do
      if not refs.textLabel then
        continue
      end

      refs.textLabel.Text = refs.textLabel.Text .. " Test"
    end
  end)

  coroutine.resume(updateTextLabel)

  return newFrame
end

local screenGui = gui.screenGui({}, {
  frame()
})

screenGui.Parent = playerGui