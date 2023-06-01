local baseUi = game.ReplicatedStorage.Common.BaseUI
local tailwindIntegrationTypes = require(baseUi.OptionalModules.TailwindIntegration.Types)

local customStyleMappings: tailwindIntegrationTypes.StyleMappings = {
  -- Custom style mappings!!
  -- e.g.
  -- ["bg-transparent"] = { BackgroundTransparency = 0 },
}

return {
  customStyleMappings = customStyleMappings,
}
