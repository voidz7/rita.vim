highlight clear
set background=dark

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "rita"

let s:cterm = {}

let s:cterm.none = { "default": "NONE" }
let s:cterm.background = { "default": "0" }
let s:cterm.red = { "default": "1" }
let s:cterm.green = { "default": "2" }
let s:cterm.yellow = { "default": "3" }
let s:cterm.blue = { "default": "4" }
let s:cterm.magenta = { "default": "5" }
let s:cterm.cyan = { "default": "6" }
let s:cterm.foreground = { "default": "7" }
let s:cterm.black = { "default": "8" }

function! s:hi(group, ctermfg, ctermbg, attr)
    if s:cterm(a:ctermfg) != ""
        exec "hi " . a:group . " ctermfg=" . s:cterm(a:ctermfg)
    endif
    if s:cterm(a:ctermbg) != ""
        exec "hi " . a:group . " ctermbg=" . s:cterm(a:ctermbg)
    endif
    if a:attr != ""
        exec "hi " . a:group . " cterm=" . a:attr
    endif
endfunction

function! s:cterm(color)
    return a:color["default"]
endfunction

" Neovim terminal colors
if has("nvim")
    let g:terminal_color_0 = s:cterm(s:cterm.background)
    let g:terminal_color_1 = s:cterm(s:cterm.red)
    let g:terminal_color_2 = s:cterm(s:cterm.green)
    let g:terminal_color_3 = s:cterm(s:cterm.yellow)
    let g:terminal_color_4 = s:cterm(s:cterm.blue)
    let g:terminal_color_5 = s:cterm(s:cterm.magenta)
    let g:terminal_color_6 = s:cterm(s:cterm.cyan)
    let g:terminal_color_7 = s:cterm(s:cterm.foreground)
    let g:terminal_color_8 = s:cterm(s:cterm.black)
    let g:terminal_color_9 = s:cterm(s:cterm.red)
    let g:terminal_color_10 = s:cterm(s:cterm.green)
    let g:terminal_color_11 = s:cterm(s:cterm.yellow)
    let g:terminal_color_12 = s:cterm(s:cterm.blue)
    let g:terminal_color_13 = s:cterm(s:cterm.magenta)
    let g:terminal_color_14 = s:cterm(s:cterm.cyan)
    let g:terminal_color_15 = s:cterm(s:cterm.foreground)
endif

" Editor colors
call s:hi("User1", s:cterm.background, s:cterm.foreground, "")
call s:hi("User2", s:cterm.foreground, s:cterm.background, "")
call s:hi("User3", s:cterm.background, s:cterm.black, "")
call s:hi("User4", s:cterm.black, s:cterm.background, "")
call s:hi("User5", s:cterm.background, s:cterm.background, "")

" Statusline colors
call s:hi("StatusLine", s:cterm.yellow, s:cterm.background, "NONE")
call s:hi("StatusLineNC", s:cterm.black, s:cterm.background, "NONE")
call s:hi("StatusLineTerm", s:cterm.background, s:cterm.background, "NONE")
call s:hi("StatusLineTemrNC", s:cterm.black, s:cterm.background, "NONE")

" Ale colors
call s:hi("ALEInfoSign", s:cterm.black, s:cterm.none, "")
call s:hi("ALEErrorSign", s:cterm.black, s:cterm.none, "")
call s:hi("ALEWarningSign", s:cterm.black, s:cterm.none, "")
call s:hi("ALEStyleErrorSign", s:cterm.black, s:cterm.none, "")
call s:hi("ALEStyleWarningSign", s:cterm.black, s:cterm.none, "")
call s:hi("ALEInfoLine", s:cterm.black, s:cterm.none, "")
call s:hi("ALEErrorLine", s:cterm.black, s:cterm.none, "")
call s:hi("ALEWarningLine", s:cterm.black, s:cterm.none, "")

" Defaults
call s:hi("EndOfBuffer", s:cterm.background, "", "")
call s:hi("SpecialKey", s:cterm.black, "", "")
call s:hi("ColorColumn", s:cterm.foreground, s:cterm.black, "")
call s:hi("Cursor", s:cterm.foreground, "", "")
call s:hi("CursorColumn", s:cterm.none, s:cterm.none, "")
call s:hi("SignColumn", s:cterm.red, s:cterm.none, "")
call s:hi("LineNr", s:cterm.black, s:cterm.none, "")
call s:hi("CursorLine", s:cterm.none, s:cterm.background, "NONE")
call s:hi("CursorLineNr", s:cterm.foreground, s:cterm.none, "NONE")
call s:hi("Directory", s:cterm.blue, "", "")
call s:hi("FoldColumn", "", s:cterm.none, "")
call s:hi("Folded", s:cterm.background, s:cterm.black, "")
call s:hi("PMenu", s:cterm.background, s:cterm.black, "")
call s:hi("PMenuSel", s:cterm.background, s:cterm.foreground, "")
call s:hi("ErrorMsg", s:cterm.red, s:cterm.none, "")
call s:hi("Error", s:cterm.red, s:cterm.none, "")
call s:hi("WarningMsg", s:cterm.yellow, "", "")
call s:hi("SpellBad", s:cterm.red, s:cterm.none, "NONE")
call s:hi("VertSplit", s:cterm.black, s:cterm.none, "NONE")
call s:hi("Conceal", s:cterm.black, s:cterm.none, "")

" Diffs
call s:hi("DiffAdded", s:cterm.green, "", "")
call s:hi("DiffRemoved", s:cterm.red, "", "")
call s:hi("DiffAdd", s:cterm.green, s:cterm.cyan, "")
call s:hi("DiffChange", s:cterm.foreground, s:cterm.cyan, "")
call s:hi("DiffDelete", s:cterm.red, s:cterm.black, "")
call s:hi("DiffText", s:cterm.background, s:cterm.black, "")

" Misc
call s:hi("NonText", s:cterm.black, "", "NONE")
call s:hi("helpExample", s:cterm.blue, "", "")
call s:hi("MatchParen", s:cterm.background, s:cterm.black, "")
call s:hi("Title", s:cterm.cyan, "", "")
call s:hi("Comment", s:cterm.black, "", "")
call s:hi("String", s:cterm.blue, "", "")
call s:hi("Normal", s:cterm.foreground, s:cterm.none, "")
call s:hi("Visual", s:cterm.background, s:cterm.foreground, "")
call s:hi("Constant", s:cterm.blue, "", "")
call s:hi("Type", s:cterm.blue, "", "")
call s:hi("Define", s:cterm.cyan, "", "")
call s:hi("Statement", s:cterm.blue, "", "")
call s:hi("Function", s:cterm.magenta, "", "")
call s:hi("Conditional", s:cterm.cyan, "", "")
call s:hi("Float", s:cterm.yellow, "", "")
call s:hi("Noise", s:cterm.cyan, "", "")
call s:hi("Number", s:cterm.yellow, "", "")
call s:hi("Identifier", s:cterm.blue, "", "")
call s:hi("Operator", s:cterm.cyan, "", "")
call s:hi("PreProc", s:cterm.blue, "", "")
call s:hi("Search", s:cterm.background, s:cterm.foreground, "")
call s:hi("IncSearch", s:cterm.background, s:cterm.foreground, "")
call s:hi("Todo", s:cterm.background, "", "")

" TypeScript
call s:hi("typescriptImport", s:cterm.red, "", "")
call s:hi("typescriptExport", s:cterm.red, "", "")
call s:hi("typescriptAssign", s:cterm.cyan, "", "")
call s:hi("typescriptVariable", s:cterm.red, "", "")
call s:hi("typescriptTypeBrackets", s:cterm.cyan, "", "")
call s:hi("typescriptTypeQuery", s:cterm.red, "", "")
call s:hi("typescriptFuncName", s:cterm.magenta, "", "")
call s:hi("typescriptRegExpMethod", s:cterm.magenta, "", "")
call s:hi("typescriptRegexpString", s:cterm.blue, "", "")
call s:hi("typescriptMember", s:cterm.cyan, "", "")
call s:hi("typescriptObjectStaticMethod", s:cterm.magenta, "", "")
call s:hi("typescriptBoolean", s:cterm.cyan, "", "")
call s:hi("typescriptObjectLabel", s:cterm.cyan, "", "")
call s:hi("typescriptObjectLiteral", s:cterm.cyan, "", "")
call s:hi("typescriptStringProperty", s:cterm.blue, "", "")
call s:hi("typescriptInterfaceKeyword", s:cterm.red, "", "")
call s:hi("typescriptTemplate", s:cterm.blue, "", "")
call s:hi("typescriptConditional", s:cterm.red, "", "")
call s:hi("typescriptUnaryOp", s:cterm.cyan, "", "")
call s:hi("typescriptAsyncFuncKeyword", s:cterm.red, "", "")
call s:hi("typescriptBOMLocationMethod", s:cterm.magenta, "", "")
call s:hi("typescriptDOMFormProp", s:cterm.cyan, "", "")
call s:hi("typescriptArrayMethod", s:cterm.magenta, "", "")
call s:hi("typescriptStringMethod", s:cterm.magenta, "", "")

" TSX/JSX
call s:hi("jsxOpenPunct", s:cterm.cyan, "", "")
call s:hi("jsxClosePunct", s:cterm.cyan, "", "")
call s:hi("jsxTagName", s:cterm.green, "", "")
call s:hi("jsxEqual", s:cterm.cyan, "", "")
call s:hi("jsxComponentName", s:cterm.foreground, "", "")
call s:hi("jsxAttrib", s:cterm.cyan, "", "")
call s:hi("jsxString", s:cterm.blue, "", "")
call s:hi("jsxBraces", s:cterm.foreground, "", "")

" NERDTree
call s:hi("NERDTreeOpenable",                  s:cterm.black,            s:cterm.none,             "")
call s:hi("NERDTreeClosable",                  s:cterm.black,            s:cterm.none,             "")
call s:hi("NERDTreeCWD",                       s:cterm.foreground,       s:cterm.none,             "")
call s:hi("NERDTreeDir",                       s:cterm.black,            s:cterm.none,             "")
call s:hi("NERDTreeDirSlash",                  s:cterm.background,       s:cterm.none,             "")
call s:hi("NERDTreeExecFile",                  s:cterm.red,              s:cterm.none,             "")

