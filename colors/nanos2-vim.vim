" Nanos colorscheme
" Started from these four colours in dark mode: #ffc777, #fca7ea, #4fd633, #65bcff

hi clear
if exists("syntax_on")
  syntax reset
endif

set termguicolors

let colors_name = "nanos"
let s:palette = {}

if &background ==# "dark"
    " Dark palette
    let s:palette = {
        \ 'white':      '#eeeeee',
        \ 'black':      '#14161b',
        \ 'blue1':      '#2d52d6',
        \ 'blue2':      '#65bcff',
        \ 'blue3':      '#1e3da1',
        \ 'light_blue': '#c8d3f5',
        \ 'purple':     '#9d33ff',
        \ 'pink':       '#fca7ea',
        \ 'dark_red':   '#773c3c',
        \ 'orange1':    '#ff966c',
        \ 'orange2':    '#ffc777',
        \ 'brown':      '#402a00',
        \ 'yellow':     '#e2eb56',
        \ 'green':      '#4fd633',
        \ 'dark_green': '#00402a',
        \ 'grey1':      '#8c8c8c',
        \ 'grey2':      '#3c3c3c',
        \ 'grey3':      '#000000',
        \ 'grey4':      '#535561',
        \ 'grey5':      '#c2c2c2',
        \ }

    let s:bg        = s:palette.black
    let s:fg        = s:palette.white
    let s:function  = s:palette.blue1
    let s:type      = s:palette.blue2
    let s:special   = s:palette.blue2
    let s:statement = s:palette.purple
    let s:constant  = s:palette.orange1
    let s:comment   = s:palette.grey1
    let s:keyword   = s:palette.purple
    let s:preproc   = s:palette.blue2
    let s:string    = s:palette.yellow
    let s:visual    = s:palette.grey2
    let s:cursorline= s:palette.grey3
    let s:matchparen= s:palette.orange1
    let s:warning   = s:palette.orange2
    let s:diffadd   = s:palette.dark_green
    let s:diffchange= s:palette.brown
    let s:diffdelete= s:palette.dark_red
    let s:statusline= s:palette.white
    let s:linenr    = s:palette.grey4
    let s:curslinenr= s:palette.grey1
    let s:pmenufg   = s:palette.grey5
    let s:puncspcial= s:palette.dark_red
    let s:variable  = s:palette.light_blue
    let s:varmember = s:palette.green
    let s:varparam  = s:palette.orange2
    let s:property  = s:palette.green
    let s:keywordvim= s:palette.pink
    let s:ctype     = s:palette.blue3
    let s:pythonbtin= s:palette.pink
else
    " Light palette
    let s:palette = {
        \ 'white':      '#eeeeee',
        \ 'black':      '#14161b',
        \ 'blue1':      '#5f7ee7',
        \ 'blue2':      '#0069ff',
        \ 'blue3':      '#1e3da1',
        \ 'light_blue': '#829be8',
        \ 'purple':     '#9d33ff',
        \ 'pink':       '#cd07a3',
        \ 'dark_red':   '#400000',
        \ 'orange1':    '#ff500a',
        \ 'orange2':    '#f89200',
        \ 'brown':      '#402a00',
        \ 'yellow':     '#9ea300',
        \ 'green':      '#32921d',
        \ 'dark_green': '#00402a',
        \ 'grey1':      '#999999',
        \ 'grey2':      '#cccccc',
        \ 'grey3':      '#dddddd',
        \ 'grey4':      '#666666',
        \ 'grey5':      '#797979',
        \ }

    let s:bg        = s:palette.white
    let s:fg        = s:palette.black
    let s:function  = s:palette.blue1
    let s:type      = s:palette.blue2
    let s:special   = s:palette.blue2
    let s:statement = s:palette.purple
    let s:constant  = s:palette.orange1
    let s:comment   = s:palette.grey1
    let s:keyword   = s:palette.purple
    let s:preproc   = s:palette.blue3
    let s:string    = s:palette.yellow
    let s:visual    = s:palette.grey2
    let s:cursorline= s:palette.grey3
    let s:matchparen= s:palette.orange1
    let s:warning   = s:palette.orange2
    let s:diffadd   = s:palette.dark_green
    let s:diffchange= s:palette.brown
    let s:diffdelete= s:palette.dark_red
    let s:statusline= s:palette.grey1
    let s:linenr    = s:palette.grey4
    let s:curslinenr= s:palette.grey1
    let s:pmenufg   = s:palette.grey5
    let s:puncspcial= s:palette.dark_red
    let s:variable  = s:palette.light_blue
    let s:varmember = s:palette.green
    let s:varparam  = s:palette.orange2
    let s:property  = s:palette.green
    let s:keywordvim= s:palette.pink
    let s:ctype     = s:palette.blue3
    let s:pythonbtin= s:palette.pink
endif

":h group-name
execute 'highlight Comment guifg=' . s:comment
execute 'highlight Constant guifg=' . s:constant
execute 'highlight String guifg=' . s:string
execute 'highlight Function guifg=' . s:function
execute 'highlight Statement guifg=' . s:statement
execute 'highlight Keyword guifg=' . s:keyword
execute 'highlight PreProc guifg=' . s:preproc
execute 'highlight Type guifg=' . s:type
execute 'highlight Special guifg=' . s:special

" General
execute 'highlight Normal guifg=' . s:fg . ' guibg=' . s:bg | " Background and text
execute 'highlight EndOfBuffer guifg=' . s:bg | " Dashes at end of file
execute 'highlight Title guifg=' . s:fg . ' gui=bold'
execute 'highlight Visual guibg=' . s:visual
execute 'highlight CursorLine guibg=' . s:cursorline' guifg=NONE'
execute 'highlight MatchParen guifg=' . s:matchparen . ' guibg=' . s:bg
execute 'highlight WinSeparator guifg=' . s:fg

" Messages
execute 'highlight WarningMsg guifg=' . s:warning

" Diff
execute 'highlight DiffAdd guibg=' . s:diffadd . ' gui=NONE guifg=NONE'
execute 'highlight DiffChange guibg=' . s:diffchange . ' gui=NONE guifg=NONE'
execute 'highlight DiffDelete guibg=' . s:diffdelete . ' gui=NONE guifg=NONE'
execute 'highlight DiffText guibg=' . s:fg . ' gui=NONE guifg=NONE'

" Folding
execute 'highlight Folded guibg=' . s:bg . ' gui=bold,italic'

" Status line
execute 'highlight StatusLine guibg=' . s:statusline . ' guifg=' . s:bg . ' gui=bold,italic'
execute 'highlight StatusLineNC guibg=' . s:bg . ' guifg=' . s:statusline . ' gui=bold'

" Line numbers side
execute 'highlight LineNr guifg=' . s:linenr
execute 'highlight CursorLineNr guifg=' . s:curslinenr
execute 'highlight SignColumn guifg=' . s:linenr . ' guibg=' . s:bg

" Popup menu
execute 'highlight Pmenu guibg=' . s:visual . ' guifg=' . s:pmenufg . ' gui=bold' | " Popup menu font and Background
execute 'highlight PmenuSel guibg=' . s:bg . ' guifg=' . s:type | " Popup menu selection highlight and text highlight when selected
execute 'highlight PmenuSbar guibg=' . s:comment | " Popup menu scroll background
execute 'highlight PmenuThumb guibg=' . s:pmenufg | " Popup menu scroll thing
execute 'highlight PmenuMatch guibg=NONE guifg=' . s:type
execute 'highlight PmenuKind guifg=' . s:constant

" Tabline
execute 'highlight TabLine gui=NONE guibg=' . s:bg . ' guifg=' . s:linenr
execute 'highlight TabLineSel gui=bold guibg=' . s:preproc . ' guifg=' . s:bg
execute 'highlight TabLineFill gui=NONE' | " Fill between the tabs

" Special Comments
execute 'highlight TODO guibg=NvimLightCyan guifg=' . s:fg
execute 'highlight INFO guibg=NvimLightBlue guifg=' . s:fg
execute 'highlight FIX guibg=NvimLightMagenta guifg=' . s:fg
execute 'highlight BUG guibg=NvimLightRed guifg=' . s:fg
execute 'highlight NOTE guibg=NvimLightYellow guifg=' . s:fg

"" Tree-sitter
" General
execute 'highlight @operator guifg=' . s:preproc
execute 'highlight @punctuation guifg=' . s:linenr | " Brackets
execute 'highlight @punctuation.special guifg=' . s:puncspcial | " Exclamation marks
execute 'highlight @variable guifg=' . s:variable
execute 'highlight @variable.member guifg=' . s:varmember
execute 'highlight @variable.parameter guifg=' . s:varparam
execute 'highlight @property guifg=' . s:property

" Vimscript
execute 'highlight @keyword.vim gui=italic  guifg=' . s:keywordvim
execute 'highlight @property.vim  guifg=' . s:property

" C
execute 'highlight @keyword.type.c  guifg=' . s:ctype

" Python
execute 'highlight @variable.builtin.python gui=italic guifg=' . s:pythonbtin

" Markdown
execute 'highlight  @markup.heading.1.markdown guifg=' . s:special
execute 'highlight  @markup.heading.2.markdown guifg=' . s:property
execute 'highlight  @markup.heading.3.markdown guifg=' . s:constant
execute 'highlight  @markup.heading.4.markdown guifg=' . s:keywordvim

" LSP
execute 'highlight @lsp.typemod.function.defaultLibrary guifg=' . s:special

