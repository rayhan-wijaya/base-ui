local types = require(script.Parent.Parent.Parent.Types) -- For typesafety and preventing renaming issues

export type StylePropertyFunction = (guiItem: types.GuiItem) -> any
export type StyleProperties = {[string]: types.GuiItem | StylePropertyFunction}
export type StyleMappings = {[string]: StyleProperties}

return {}
