local applyStylesModule = require(script.Parent.ApplyStyles)
local applyStylesToGuiItem = applyStylesModule.applyStylesToGuiItem

local guiInitHooksModule = require(script.Parent.Parent.Parent.GUIInitHooks)
local registerInitHook = guiInitHooksModule.registerInitHook

local init = function ()
  registerInitHook(function (guiItem, props)
    applyStylesToGuiItem(props.TStyles, guiItem)

    print("Applied styles!")
  end)
end

return init