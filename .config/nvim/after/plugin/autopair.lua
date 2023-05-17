require("nvim-autopairs").setup {
  fast_wrap = {
    map = "<M-e>",
    chars = { "{", "[", "(", '"', "'" },
    pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
    offset = 0,
    end_key = "e",
    keys = "qwertyuiopzxcvbnmasdfghjkl",
    check_comma = true,
    hightlight = "Search",
    highlight_group = "Search",
    highlight_char = "Search",
  }
}

local cmp_autopairs = require "nvim-autopairs.completion.cmp"
local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
  return
end
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })
