local baseUI = game.ReplicatedStorage.Common.BaseUI
local gui = require(baseUI.GUI)
local types = require(baseUI.Types)

local player = game.Players.LocalPlayer
local playerGui = player.PlayerGui

local frame = function ()
  local refs = {
    textLabel = nil :: TextLabel?,
  }

  local createRef = function (refKey: string): types.Ref
    return {
      refs = refs,
      refKey = refKey,
    }
  end

  local textLabelRef: types.Ref = createRef("textLabelRef")

  local newFrame = (
    gui.frame({ Styles = "bg-red-900 text-scaled" }, {
      gui.textLabel({ Styles = "bg-red-300 text-scaled", Ref = textLabelRef }, {
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