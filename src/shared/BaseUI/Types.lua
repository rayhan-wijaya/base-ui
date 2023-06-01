--!strict

export type GuiItem = GuiObject | LayerCollector

export type Children = {GuiItem} | {string}

export type Ref = {
  refKey: string,
  refs: {[string]: GuiItem},
}

-- INFO: When adding a prop to `BaseUIProps`, please update `allBaseUIProps`

export type BaseUIProps = {
  Ref: Ref,
  TStyles: string,
}

local allBaseUIProps = {
  "Ref",
  "TStyles",
}

return {
  allBaseUIProps = allBaseUIProps,
}
