# base-ui

BaseUI is a minimal UI builder for Luau. It's designed to be type-safe, terse
in its syntax, and highly extensible by allowing people to tap into the core
library to create their own GUI elements or widgets. It also exposes APIs such
as init hooks which allow you to run events/hooks every time a GUI element is
initialized. (It also allows you to use Tailwind-like styles)

A peek at its syntax:

```lua
local inventoryItem = function (props: { itemName: string })
  return (
    gui.frame({ Styles = "w-1/2 h-1/2 bg-red-300", Name = "InventoryItem" }, {
      gui.textLabel({ Styles = "text-scaled", Name = "InventoryItemName" }, {
        props.itemName,
      })
    })
  )
end
```
