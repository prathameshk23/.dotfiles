local options = {
  -- Indentation
  tabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  smarttab = true,

  -- Search
  ignorecase = true,
  smartcase = true,
  hlsearch = false,
  incsearch = true,

  -- User Interface
  splitbelow = true,
  splitright = true,
  number = true,
  relativenumber = true,
  cursorline = true,
  title = true,
  guicursor = "",

  -- Text Rendering
  scrolloff = 8,
  wrap = true,
  linebreak = true,

  -- Backup
  swapfile = false,
  backup = false,

  -- Misc
  termguicolors = true,
  confirm = true,
  updatetime = 250,
}

for key, value in pairs(options) do
  vim.opt[key] = value
end

