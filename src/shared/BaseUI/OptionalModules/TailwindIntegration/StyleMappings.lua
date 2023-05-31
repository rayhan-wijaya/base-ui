local styleMappings: {[string]: GuiBase} = {
  -- BG
  ["bg-transparent"] = { BackgroundTransparency = 0 },

  -- BG Slate
  ["bg-slate-50"] = { BackgroundColor3 = Color3.fromHex("#f8fafc") },
  ["bg-slate-100"] = { BackgroundColor3 = Color3.fromHex("#f1f5f9") },
  ["bg-slate-200"] = { BackgroundColor3 = Color3.fromHex("#e2e8f0") },
  ["bg-slate-300"] = { BackgroundColor3 = Color3.fromHex("#cbd5e1") },
  ["bg-slate-400"] = { BackgroundColor3 = Color3.fromHex("#94a3b8") },
  ["bg-slate-500"] = { BackgroundColor3 = Color3.fromHex("#64748b") },
  ["bg-slate-600"] = { BackgroundColor3 = Color3.fromHex("#475569") },
  ["bg-slate-700"] = { BackgroundColor3 = Color3.fromHex("#334155") },
  ["bg-slate-800"] = { BackgroundColor3 = Color3.fromHex("#1e293b") },
  ["bg-slate-900"] = { BackgroundColor3 = Color3.fromHex("#0f172a") },
  ["bg-slate-950"] = { BackgroundColor3 = Color3.fromHex("#020617") },

  -- BG Gray
  ["bg-gray-50"] = { BackgroundColor3 = Color3.fromHex("#f9fafb") },
  ["bg-gray-100"] = { BackgroundColor3 = Color3.fromHex("#f3f4f6") },
  ["bg-gray-200"] = { BackgroundColor3 = Color3.fromHex("#e5e7eb") },
  ["bg-gray-300"] = { BackgroundColor3 = Color3.fromHex("#d1d5db") },
  ["bg-gray-400"] = { BackgroundColor3 = Color3.fromHex("#9ca3af") },
  ["bg-gray-500"] = { BackgroundColor3 = Color3.fromHex("#6b7280") },
  ["bg-gray-600"] = { BackgroundColor3 = Color3.fromHex("#4b5563") },
  ["bg-gray-700"] = { BackgroundColor3 = Color3.fromHex("#374151") },
  ["bg-gray-800"] = { BackgroundColor3 = Color3.fromHex("#1f2937") },
  ["bg-gray-900"] = { BackgroundColor3 = Color3.fromHex("#111827") },
  ["bg-gray-950"] = { BackgroundColor3 = Color3.fromHex("#030712") },

  -- -- BG Zinc
  -- ["bg-zinc-50"] = { BackgroundColor3 = Color3.fromHex("#fafafa") },
  -- ["bg-zinc-100"] = { BackgroundColor3 = Color3.fromHex("#f4f4f5") },
  -- ["bg-zinc-200"] = { BackgroundColor3 = Color3.fromHex("#e4e4e7") },
  -- ["bg-zinc-300"] = { BackgroundColor3 = Color3.fromHex("#d4d4d8") },
  -- ["bg-zinc-400"] = { BackgroundColor3 = Color3.fromHex("#a1a1aa") },
  -- ["bg-zinc-500"] = { BackgroundColor3 = Color3.fromHex("#71717a") },
  -- ["bg-zinc-600"] = { BackgroundColor3 = Color3.fromHex("#52525b") },
  -- ["bg-zinc-700"] = { BackgroundColor3 = Color3.fromHex("#3f3f46") },
  -- ["bg-zinc-800"] = { BackgroundColor3 = Color3.fromHex("#27272a") },
  -- ["bg-zinc-900"] = { BackgroundColor3 = Color3.fromHex("#18181b") },
  -- ["bg-zinc-950"] = { BackgroundColor3 = Color3.fromHex("#09090b") },

  -- BG Neutral
  ["bg-neutral-50"] = { BackgroundColor3 = Color3.fromHex("#fafafa") },
  ["bg-neutral-100"] = { BackgroundColor3 = Color3.fromHex("#f5f5f5") },
  ["bg-neutral-200"] = { BackgroundColor3 = Color3.fromHex("#e5e5e5") },
  ["bg-neutral-300"] = { BackgroundColor3 = Color3.fromHex("#d4d4d4") },
  ["bg-neutral-400"] = { BackgroundColor3 = Color3.fromHex("#a3a3a3") },
  ["bg-neutral-500"] = { BackgroundColor3 = Color3.fromHex("#737373") },
  ["bg-neutral-600"] = { BackgroundColor3 = Color3.fromHex("#525252") },
  ["bg-neutral-700"] = { BackgroundColor3 = Color3.fromHex("#404040") },
  ["bg-neutral-800"] = { BackgroundColor3 = Color3.fromHex("#262626") },
  ["bg-neutral-900"] = { BackgroundColor3 = Color3.fromHex("#171717") },
  ["bg-neutral-950"] = { BackgroundColor3 = Color3.fromHex("#0a0a0a") },

  -- -- BG Stone
  -- ["bg-stone-50"] = { BackgroundColor3 = Color3.fromHex("#fafaf9") },
  -- ["bg-stone-100"] = { BackgroundColor3 = Color3.fromHex("#f5f5f4") },
  -- ["bg-stone-200"] = { BackgroundColor3 = Color3.fromHex("#e7e5e4") },
  -- ["bg-stone-300"] = { BackgroundColor3 = Color3.fromHex("#d6d3d1") },
  -- ["bg-stone-400"] = { BackgroundColor3 = Color3.fromHex("#a8a29e") },
  -- ["bg-stone-500"] = { BackgroundColor3 = Color3.fromHex("#78716c") },
  -- ["bg-stone-600"] = { BackgroundColor3 = Color3.fromHex("#57534e") },
  -- ["bg-stone-700"] = { BackgroundColor3 = Color3.fromHex("#44403c") },
  -- ["bg-stone-800"] = { BackgroundColor3 = Color3.fromHex("#292524") },
  -- ["bg-stone-900"] = { BackgroundColor3 = Color3.fromHex("#1c1917") },
  -- ["bg-stone-950"] = { BackgroundColor3 = Color3.fromHex("#0c0a09") },

  -- BG Red
  ["bg-red-50"] = { BackgroundColor3 = Color3.fromHex("#fef2f2") },
  ["bg-red-100"] = { BackgroundColor3 = Color3.fromHex("#fee2e2") },
  ["bg-red-200"] = { BackgroundColor3 = Color3.fromHex("#fecaca") },
  ["bg-red-300"] = { BackgroundColor3 = Color3.fromHex("#fca5a5") },
  ["bg-red-400"] = { BackgroundColor3 = Color3.fromHex("#f87171") },
  ["bg-red-500"] = { BackgroundColor3 = Color3.fromHex("#ef4444") },
  ["bg-red-600"] = { BackgroundColor3 = Color3.fromHex("#dc2626") },
  ["bg-red-700"] = { BackgroundColor3 = Color3.fromHex("#b91c1c") },
  ["bg-red-800"] = { BackgroundColor3 = Color3.fromHex("#991b1b") },
  ["bg-red-900"] = { BackgroundColor3 = Color3.fromHex("#7f1d1d") },
  ["bg-red-950"] = { BackgroundColor3 = Color3.fromHex("#450a0a") },

  -- BG Orange
  ["bg-orange-50"] = { BackgroundColor3 = Color3.fromHex("#fff7ed") },
  ["bg-orange-100"] = { BackgroundColor3 = Color3.fromHex("#ffedd5") },
  ["bg-orange-200"] = { BackgroundColor3 = Color3.fromHex("#fed7aa") },
  ["bg-orange-300"] = { BackgroundColor3 = Color3.fromHex("#fdba74") },
  ["bg-orange-400"] = { BackgroundColor3 = Color3.fromHex("#fb923c") },
  ["bg-orange-500"] = { BackgroundColor3 = Color3.fromHex("#f97316") },
  ["bg-orange-600"] = { BackgroundColor3 = Color3.fromHex("#ea580c") },
  ["bg-orange-700"] = { BackgroundColor3 = Color3.fromHex("#c2410c") },
  ["bg-orange-800"] = { BackgroundColor3 = Color3.fromHex("#9a3412") },
  ["bg-orange-900"] = { BackgroundColor3 = Color3.fromHex("#7c2d12") },
  ["bg-orange-950"] = { BackgroundColor3 = Color3.fromHex("#431407") },
}

return styleMappings
