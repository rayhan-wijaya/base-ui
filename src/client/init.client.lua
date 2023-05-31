local player = game.Players.LocalPlayer
local playerGui = player.PlayerGui

local baseUI = game.ReplicatedStorage.Common.BaseUI
local gui = require(baseUI.GUI)

local frame = function ()
  local refs  = {
    firstButton = nil :: TextButton?,
  }

  local frame = (
    gui.frame({
      Size = UDim2.new(1, 0, 1, 0),
      Styles = "bg-red-900 bg-red-100",
    }, {
      gui.textButton({
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        Ref = { refKey = "firstButton", refs = refs },
      }, {
        "0"
      }),
      gui.textButton({ BackgroundColor3 = Color3.fromRGB() }, {
        "Second Button",
      }),
    })
  )

  local updateFirstButton = coroutine.create(function ()
    while task.wait(0.5) do
      local nextNumber = tonumber(refs.firstButton.Text) + 1
      refs.firstButton.Text = tostring(nextNumber)
    end
  end)

  coroutine.resume(updateFirstButton)

  return frame
end

local screenGui = (
  gui.screenGui({}, {
    frame(),
  })
)

screenGui.Parent = playerGui

