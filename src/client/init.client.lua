local baseUI = game.ReplicatedStorage.Common.BaseUI
local gui = require(baseUI.GUI)
local utils = require(baseUI.Utils)

local tailwindIntegration = baseUI.OptionalModules.TailwindIntegration
require(tailwindIntegration.InitTailwindIntegration)()

local player = game.Players.LocalPlayer
local playerGui = player.PlayerGui

local inventory = {
  { name = "Sword" },
  { name = "Axe" },
}

local inventoryItem = function (props: { itemName: string })
  return (
    gui.frame({ Styles = "w-1/2 h-1/2 bg-red-300", Name = "InventoryItem" }, {
      gui.textLabel({ Styles = "text-scaled", Name = "InventoryItemName" }, {
        props.itemName,
      })
    })
  )
end

local inventoryFrame = function ()
  local inventoryItems = function ()
    return (
      utils.map(inventory, function (item)
        return inventoryItem({
          itemName = item.name,
        })
      end)
    )
  end

  return (
    gui.frame({ Styles = "w-1/2 h-1/5 bg-red-800", Name = "InventoryFrame" }, (
      inventoryItems()
    ))
  )
end

local screenGui = (
  gui.screenGui({}, {
    inventoryFrame(),
  })
)

screenGui.Parent = playerGui
