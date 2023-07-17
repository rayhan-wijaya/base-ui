# base-ui

**Notice**: BaseUI is still in heavy work. A version of it will be released
when it's ready for even a partial usage. Likely 0.1. It's still in a
prototyping stage.

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
                props.itemName, -- text nodes!
            })
        })
    )
end
```

## No Virtual DOM. Manage your own state.

BaseUI is meant to be a UI builder and nothing more. It establishes primitives
for building UI without introducing a memory-hogging solution, making it a more
general-purpose library.

As for alternatives, you can use refs instead, which are dead simple under the
hood. They do not use abstract code. They're literally just variables
referencing the GUI element. Refer to the next section for more detail on refs.

So something like:

```lua
local frame = Instance.new("Frame")
-- a variable referencing a GUI element
```

-would be the similar implementation of refs in BaseUI.

This also allows for a more fine-grained and precise control over your
elements.

And since there's no virtual dom, every element is not a special object.
They're just normal elements! Similar to SolidJS.

Which means that in BaseUI, you can seamlessly create code like the following:

```lua
gui.frame({ Style = "w-1/2 h-1/2 bg-red-900" }, {
    Instance.new("TextLabel"),

    gui.textLabel({ Style = "text-scaled" }, {
        "This is a text label"
    })
})
```

They are the same thing.
