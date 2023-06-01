local types = require(script.Parent.Types)

local generateCreateRef = function (refs: {[number]: types.GuiItem}): (refKey: string) -> types.Ref
  return function (refKey: string)
    return {
      refs = refs,
      refKey = refKey,
    }
  end
end

local map = function<T, R>(items: {T}, mapper: (T) -> R): {R}
  local newItems = {}

  for _, item in ipairs(items) do
    table.insert(newItems, mapper(item))
  end

  return newItems
end

return {
  generateCreateRef = generateCreateRef,
  map = map,
}
