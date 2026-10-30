" Nanos colorscheme
" Started from these four colours in dark mode: #ffc777, #fca7ea, #4fd633, #65bcff

highlight clear
if exists("syntax_on")
    syntax reset
endif

set termguicolors
let g:colors_name = "nanos"

" Palette --------------------------------------------------------------------

if &background ==# "dark"
    let s:p = {
        \ 'white':      '#eeeeee',
        \ 'black':      '#14161b',
        \ 'blue1':      '#2d52d6',
        \ 'blue2':      '#65bcff',
        \ 'blue3':      '#1e3da1',
        \ 'light_blue': '#c8d3f5',
        \ 'purple':     '#9d33ff',
        \ 'pink':       '#fca7ea',
        \ 'dark_red':   '#400000',
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
else
    let s:p = {
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
endif

" Semantic colours -----------------------------------------------------------
" Keep highlight groups mapped to roles rather than directly to palette keys.

let s:c = {
    \ 'bg':           &background ==# 'dark' ? s:p.black : s:p.white,
    \ 'fg':           &background ==# 'dark' ? s:p.white : s:p.black,
    \ 'function':     s:p.blue1,
    \ 'type':         s:p.blue2,
    \ 'special':      s:p.blue2,
    \ 'statement':    s:p.purple,
    \ 'constant':     s:p.orange1,
    \ 'comment':      s:p.grey1,
    \ 'keyword':      s:p.purple,
    \ 'preproc':      &background ==# 'dark' ? s:p.blue2 : s:p.blue3,
    \ 'string':       s:p.yellow,
    \ 'visual':       s:p.grey2,
    \ 'cursorline':   s:p.grey3,
    \ 'matchparen':   s:p.orange1,
    \ 'warning':      s:p.orange2,
    \ 'diffadd':      s:p.dark_green,
    \ 'diffchange':   s:p.brown,
    \ 'diffdelete':   s:p.dark_red,
    \ 'statusline':   &background ==# 'dark' ? s:p.white : s:p.grey1,
    \ 'linenr':       s:p.grey4,
    \ 'curslinenr':   s:p.grey1,
    \ 'pmenufg':      s:palette.grey5,
    \ 'punctuation':  s:p.dark_red,
    \ 'variable':     s:p.light_blue,
    \ 'varmember':    s:p.green,
    \ 'varparam':     s:p.orange2,
    \ 'property':     s:p.green,
    \ 'keywordvim':   s:p.pink,
    \ 'ctype':        s:p.blue3,
    \ 'pythonbuiltin': s:p.pink,
    \ }

" Highlight groups -----------------------------------------------------------
" Use one helper so group definitions stay readable and easy to maintain.

function! s:hi(group, attrs) abort
    execute 'highlight ' . a:group . ' ' . a:attrs
endfunction

" Syntax
call s:hi('Comment',    'guifg=' . s:c.comment)
call s:hi('Constant',   'guifg=' . s:c.constant)
call s:hi('String',     'guifg=' . s:c.string)
call s:hi('Function',   'guifg=' . s:c.function)
call s:hi('Statement',  'guifg=' . s:c.statement)
call s:hi('Keyword',    'guifg=' . s:c.keyword)
call s:hi('PreProc',    'guifg=' . s:c.preproc)
call s:hi('Type',       'guifg=' . s:c.type)
call s:hi('Special',    'guifg=' . s:c.special)

" General editor UI
call s:hi('Normal',      'guifg=' . s:c.fg . ' guibg=' . s:c.bg)
call s:hi('EndOfBuffer', 'guifg=' . s:c.bg)
call s:hi('Title',       'guifg=' . s:c.fg . ' gui=bold')
call s:hi('Visual',      'guibg=' . s:c.visual)
call s:hi('CursorLine',  'guibg=' . s:c.cursorline . ' guifg=NONE')
call s:hi('MatchParen',  'guifg=' . s:c.matchparen . ' guibg=' . s:c.bg)
call s:hi('WinSeparator','guifg=' . s:c.fg)

" Messages
call s:hi('WarningMsg', 'guifg=' . s:c.warning)

" Diff
call s:hi('DiffAdd',    'guibg=' . s:c.diffadd . ' gui=NONE guifg=NONE')
call s:hi('DiffChange', 'guibg=' . s:c.diffchange . ' gui=NONE guifg=NONE')
call s:hi('DiffDelete', 'guibg=' . s:c.diffdelete . ' gui=NONE guifg=NONE')
call s:hi('DiffText',   'guibg=' . s:c.fg . ' gui=NONE guifg=NONE')

" Folding
call s:hi('Folded', 'guibg=' . s:c.bg . ' gui=bold,italic')

" Status line
call s:hi('StatusLine',   'guibg=' . s:c.statusline . ' guifg=' . s:c.bg . ' gui=bold,italic')
call s:hi('StatusLineNC', 'guibg=' . s:c.bg . ' guifg=' . s:c.statusline . ' gui=bold')

" Line numbers and sign column
call s:hi('LineNr',       'guifg=' . s:c.linenr)
call s:hi('CursorLineNr', 'guifg=' . s:c.curslinenr)
call s:hi('SignColumn',   'guifg=' . s:c.linenr . ' guibg=' . s:c.bg)

" Completion popup
call s:hi('Pmenu',      'guibg=' . s:c.visual . ' guifg=' . s:c.pmenufg . ' gui=bold')
call s:hi('PmenuSel',   'guibg=' . s:c.bg . ' guifg=' . s:c.type)
call s:hi('PmenuSbar',  'guibg=' . s:c.comment)
call s:hi('PmenuThumb', 'guibg=' . s:c.pemnufg)
call s:hi('PmenuMatch', 'guibg=NONE guifg=' . s:c.type)
call s:hi('PmenuKind',  'guifg=' . s:c.constant)

" Tabline
call s:hi('TabLine',     'gui=NONE guibg=' . s:c.bg . ' guifg=' . s:c.linenr)
call s:hi('TabLineSel',  'gui=bold guibg=' . s:c.preproc . ' guifg=' . s:c.bg)
call s:hi('TabLineFill', 'gui=NONE')

" Special comments
call s:hi('TODO', 'guibg=NvimLightCyan guifg=' . s:c.fg)
call s:hi('INFO', 'guibg=NvimLightBlue guifg=' . s:c.fg)
call s:hi('FIX',  'guibg=NvimLightMagenta guifg=' . s:c.fg)
call s:hi('BUG',  'guibg=NvimLightRed guifg=' . s:c.fg)
call s:hi('NOTE', 'guibg=NvimLightYellow guifg=' . s:c.fg)

" Treesitter: general
call s:hi('@operator',              'guifg=' . s:c.preproc)
call s:hi('@punctuation',           'guifg=' . s:c.linenr)
call s:hi('@punctuation.special',   'guifg=' . s:c.punctuation)
call s:hi('@variable',              'guifg=' . s:c.variable)
call s:hi('@variable.member',       'guifg=' . s:c.varmember)
call s:hi('@variable.parameter',    'guifg=' . s:c.varparam)
call s:hi('@property',              'guifg=' . s:c.property)

" Treesitter: Vimscript
call s:hi('@keyword.vim',  'guifg=' . s:c.keywordvim)
call s:hi('@property.vim', 'guifg=' . s:c.property)

" Treesitter: C
call s:hi('@keyword.type.c', 'guifg=' . s:c.ctype)

" Treesitter: Python
call s:hi('@variable.builtin.python', 'gui=italic guifg=' . s:c.pythonbuiltin)

" Treesitter: Markdown
call s:hi('@markup.heading.1.markdown', 'guifg=' . s:c.special)
call s:hi('@markup.heading.2.markdown', 'guifg=' . s:c.property)
call s:hi('@markup.heading.3.markdown', 'guifg=' . s:c.constant)
call s:hi('@markup.heading.4.markdown', 'guifg=' . s:c.keywordvim)

" LSP semantic tokens
call s:hi('@lsp.typemod.function.defaultLibrary', 'guifg=' . s:c.special)

" Clean up the script-local helper and variables.
delfunction s:hi
unlet s:p s:c
