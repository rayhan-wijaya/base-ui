local types = require(script.Parent.Types)

local generateCreateRef = function (refs: {[number]: types.GuiItem}): (refKey: string) -> types.Ref
  return function (refKey: string)
    return {
      refs = refs,
      refKey = refKey,
    }
  end
end

return {
  generateCreateRef = generateCreateRef,
}
