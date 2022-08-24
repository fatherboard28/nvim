require("gruvbox").setup({
    undercrul = true,
    underline = true,
    bold = true,
    italic = true,
    strikethrough = true,
    invert_selection = true,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "", -- can be "hard", "soft" or empty string
    overrides = {},
})

vim.opt.background = "dark"
vim.cmd([[colorscheme gruvbox]])
