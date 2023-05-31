--!strict

export type Children = {[number]: GuiBase}

export type Ref = {
  refKey: string,
  refs: {[string]: GuiBase},
}

-- INFO: When adding a prop to `BaseUIProps`, please update `allBaseUIProps`

export type BaseUIProps = {
  Ref: Ref,
  Styles: string,
}

local allBaseUIProps = {
  "Ref",
  "Styles",
}

return {
  allBaseUIProps = allBaseUIProps,
}
