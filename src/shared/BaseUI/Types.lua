--!strict

-- INFO: When adding a prop to `BaseUIProps`, please update `allBaseUIProps`

export type BaseUIProps = {
  Ref: Ref,
  TStyles: string,
}

local allBaseUIProps = {
  "Ref",
  "TStyles",
}

export type GuiItem = GuiObject | LayerCollector

export type Children = {GuiItem} | {string}

export type InitHook = (guiItem: GuiItem, props: GuiItem & BaseUIProps) -> ()

export type Ref = {
  refKey: string,
  refs: {[string]: GuiItem},
}
return {
  allBaseUIProps = allBaseUIProps,
}
