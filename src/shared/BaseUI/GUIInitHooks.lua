local types = require(script.Parent.Types)

local initHooks = {} :: {types.InitHook}

local registerInitHook = function (initHook: types.InitHook)
  table.insert(initHooks, initHook)
end

return {
  initHooks = initHooks,
  registerInitHook = registerInitHook,
}
