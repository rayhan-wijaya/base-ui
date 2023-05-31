type GuiItem = GuiObject | LayerCollector
type StyleMappings = {[string]: GuiItem}

local customStyleMappings: StyleMappings = {
  -- Custom style mappings!!
  -- e.g.
  -- ["bg-transparent"] = { BackgroundTransparency = 0 },
}

return {
  customStyleMappings = customStyleMappings,
}
