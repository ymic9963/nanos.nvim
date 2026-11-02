-- Nanos colorscheme
-- Started from these four colours in dark mode: #ffc777, #fca7ea, #4fd633, #65bcff

-- TODO: variable colours in light mode should be black like how the variable colors in dark mode are almost white
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "nanos"

local palettes = {
    dark = {
        white = "#eeeeee",
        black = "#14161b",
        blue1 = "#2d52d6",
        blue2 = "#65bcff",
        blue3 = "#1e3da1",
        light_blue = "#c8d3f5",
        purple = "#9d33ff",
        pink = "#fca7ea",
        dark_red = "#773c3c",
        orange1 = "#ff966c",
        orange2 = "#ffc777",
        brown = "#402a00",
        yellow = "#e2eb56",
        green = "#4fd633",
        dark_green = "#00402a",
        grey1 = "#8c8c8c",
        grey2 = "#3c3c3c",
        grey3 = "#000000",
        grey4 = "#535561",
        grey5 = "#c2c2c2",
    },

    light = {
        white = "#eeeeee",
        black = "#14161b",
        blue1 = "#5f7ee7",
        blue2 = "#0069ff",
        blue3 = "#1e3da1",
        light_blue = "#829be8",
        purple = "#9d33ff",
        pink = "#cd07a3",
        dark_red = "#400000",
        orange1 = "#ff500a",
        orange2 = "#f89200",
        brown = "#402a00",
        yellow = "#9ea300",
        green = "#32921d",
        dark_green = "#00402a",
        grey1 = "#999999",
        grey2 = "#cccccc",
        grey3 = "#dddddd",
        grey4 = "#666666",
        grey5 = "#797979",
    },
}

local palette = palettes[vim.o.background] or palettes.dark

-- Semantic colours
local colors = {
    bg = palette[vim.o.background == "dark" and "black" or "white"],
    fg = palette[vim.o.background == "dark" and "white" or "black"],
    function_ = palette.blue1,
    type = palette.blue2,
    special = palette.blue2,
    statement = palette.purple,
    constant = palette.orange1,
    comment = palette.grey1,
    keyword = palette.purple,
    preproc = palette.purple,
    string = palette.yellow,
    visual = palette.grey2,
    cursorline = palette.grey3,
    matchparen = palette.orange1,
    warning = palette.orange2,
    diffadd = palette.dark_green,
    diffchange = palette.brown,
    diffdelete = palette.dark_red,
    statusline = vim.o.background == "dark" and palette.white or palette.grey1,
    linenr = vim.o.background == "dark" and palette.grey4 or palette.grey1,
    curslinenr = palette.grey5,
    pmenufg = palette.grey5,
    puncspcial = palette.dark_red,
    variable = vim.o.background == "dark" and palette.light_blue or palette.grey4,
    varmember = palette.green,
    varparam = palette.orange2,
    property = palette.green,
    keywordvim = palette.pink,
    ctype = palette.blue3,
    pythonbtin = palette.pink,
}

local highlights = {
    -- Syntax
    Comment = { fg = colors.comment },
    Constant = { fg = colors.constant },
    String = { fg = colors.string },
    Function = { fg = colors.function_ },
    Statement = { fg = colors.statement },
    Keyword = { fg = colors.keyword },
    PreProc = { fg = colors.preproc },
    Type = { fg = colors.type },
    Special = { fg = colors.special },

    -- General
    Normal = { fg = colors.fg, bg = colors.bg }, -- Background and text
    EndOfBuffer = { fg = colors.bg }, -- Dashes at end of file
    Title = { fg = colors.fg, bold = true },
    Visual = { bg = colors.visual },
    CursorLine = { bg = colors.cursorline, fg = "NONE" },
    MatchParen = { fg = colors.matchparen, bg = colors.bg },
    WinSeparator = { fg = colors.fg },

    -- Messages
    WarningMsg = { fg = colors.warning },

    -- Diff
    DiffAdd = { bg = colors.diffadd, fg = "NONE" },
    DiffChange = { bg = colors.diffchange, fg = "NONE" },
    DiffDelete = { bg = colors.diffdelete, fg = "NONE" },
    DiffText = { bg = colors.fg, fg = "NONE" },

    -- Folding
    Folded = { bg = colors.bg, bold = true, italic = true },

    -- Status line
    StatusLine = { bg = colors.statusline, fg = colors.bg, bold = true, italic = true },
    StatusLineNC = { bg = colors.bg, fg = colors.statusline, bold = true },

    -- Line numbers
    LineNr = { fg = colors.linenr },
    CursorLineNr = { fg = colors.curslinenr },
    SignColumn = { fg = colors.linenr, bg = colors.bg },

    -- Popup menu
    Pmenu = { bg = colors.visual, fg = colors.pmenufg, bold = true },  -- Popup menu font and Background
    PmenuSel = { bg = colors.type, fg = colors.bg }, -- Popup menu selection highlight and text highlight when selected
    PmenuSbar = { bg = colors.comment }, -- Popup menu scroll background
    PmenuThumb = { bg = colors.comment }, -- Popup menu scroll thing
    PmenuMatch = { bg = "NONE", fg = colors.type },
    PmenuMatchSel = { bg = "NONE", fg = colors.bg },
    PmenuKind = { fg = colors.constant },

    -- Floating windows
    NormalFloat = { bg = colors.visual, fg = colors.pmenufg },

    -- Tabline
    TabLine = { bg = colors.bg, fg = colors.linenr },
    TabLineSel = { bg = colors.type, fg = colors.bg, bold = true },
    TabLineFill = {},

    -- Special comments
    TODO = { bg = "NvimLightCyan", fg = "Black" },
    INFO = { bg = "NvimLightBlue", fg = "Black" },
    FIX = { bg = "NvimLightMagenta", fg = "Black" },
    BUG = { bg = "NvimLightRed", fg = "Black" },
    NOTE = { bg = "NvimLightYellow", fg = "Black" },

    -- Treesitter: general
    ["@operator"] = { fg = colors.type },
    ["@punctuation"] = { fg = colors.linenr }, -- Brackets
    ["@punctuation.special"] = { fg = colors.puncspcial }, -- Exclamation marks
    ["@variable"] = { fg = colors.variable },
    ["@variable.member"] = { fg = colors.varmember },
    ["@variable.parameter"] = { fg = colors.varparam },
    ["@property"] = { fg = colors.property },

    -- Treesitter: Vimscript
    ["@keyword.vim"] = { fg = colors.keywordvim },
    ["@property.vim"] = { fg = colors.property },

    -- Treesitter: C
    ["@keyword.type.c"] = { fg = colors.ctype },

    -- Treesitter: Python
    ["@variable.builtin.python"] = { fg = colors.pythonbtin, italic = true },

    -- Treesitter: Markdown
    ["@markup.heading.1.markdown"] = { fg = colors.special },
    ["@markup.heading.2.markdown"] = { fg = colors.property },
    ["@markup.heading.3.markdown"] = { fg = colors.constant },
    ["@markup.heading.4.markdown"] = { fg = colors.keywordvim },

    -- LSP
    ["@lsp.typemod.function.defaultLibrary"] = { fg = colors.special },

    -- nvim-treesitter-context
    TreesitterContext = { bg = colors.bg, sp = colors.bg },
    TreesitterContextBottom = { bg = colors.bg, sp = colors.comment, underline = true },
    TreesitterContextLineNumberBottom = { bg = colors.bg, sp = colors.comment, underline = false },
}

for group, options in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, options)
end

