" +----------------+
" | Initialization |
" +----------------+

set background=dark

highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="onedark"

" Set to "256" for 256-color terminals, or
" set to "16" to use your terminal emulator's native colors
" (a 16-color palette for this theme is not available yet.)
if !exists("g:onedark_termcolors")
  let g:onedark_termcolors = 256
endif

" Not all terminals support italics properly. If yours does, opt-in.
if !exists("g:onedark_terminal_italics")
  let g:onedark_terminal_italics = 0
endif

" This function was borrowed from FlatColor: https://github.com/MaxSt/FlatColor/
" It was based on one found in hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  if g:onedark_terminal_italics == 0 && has_key(a:style, "cterm") && a:style["cterm"] == "italic"
    unlet a:style.cterm
  endif
  if g:onedark_termcolors == 16
    let l:ctermfg = (has_key(a:style, "fg") ? a:style.fg.cterm16 : "NONE")
    let l:ctermbg = (has_key(a:style, "bg") ? a:style.bg.cterm16 : "NONE")
  else
    let l:ctermfg = (has_key(a:style, "fg") ? a:style.fg.cterm : "NONE")
    let l:ctermbg = (has_key(a:style, "bg") ? a:style.bg.cterm : "NONE")
  end
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" . l:ctermfg
    \ "ctermbg=" . l:ctermbg
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

" +-----------------+
" | Color Variables |
" +-----------------+

let s:red = { "gui": "#e45649", "cterm": "167", "cterm16": "1" } " Alternate cterm: 168
let s:red2 = { "gui": "#ca1243", "cterm": "161", "cterm16": "1" } " Alternate cterm: 168
let s:green = { "gui": "#50a14f", "cterm": "071", "cterm16": "2" }
let s:yellow = { "gui": "#986801", "cterm": "094", "cterm16": "3" }
let s:yellow2 = { "gui": "#c18401", "cterm": "136", "cterm16": "3" }
let s:blue = { "gui": "#4078f2", "cterm": "069", "cterm16": "4" } " Alternate cterm: 75
let s:purple = { "gui": "#a626a4", "cterm": "127", "cterm16": "5" } " Alternate cterm: 176
let s:cyan = { "gui": "#0184bc", "cterm": "031", "cterm16": "6" } " Alternate cterm: 73

let s:white = { "gui": "#ffffff", "cterm": "231", "cterm16" : "7" }
let s:black = { "gui": "#000000", "cterm": "016", "cterm16": "0" }

let s:fg = { "gui": "#383a42", "cterm": "237", "cterm16" : "7" }
let s:bg = { "gui": "#fafafa", "cterm": "231", "cterm16": "0" }

let s:comment_fg = { "gui": "#a0a1a7", "cterm": "247", "cterm16": "15" }

let s:gutter_fg = { "gui": "#9e9e9e", "cterm": "247", "cterm16": "15" }
let s:gutter_bg = { "gui": "#fafafa", "cterm": "231", "cterm16": "NONE" }

let s:cursor_line =  { "gui": "#f0f0f0", "cterm": "255", "cterm16": "8" }
let s:vertsplit = { "gui": "#f0f0f0", "cterm": "255", "cterm16": "15" }
let s:color_column = { "gui": "#ededed", "cterm": "255", "cterm16": ""}

let s:visual = { "gui": "#BFCEFF", "cterm": "153", "cterm16": "15" }

let s:git_gutter_add = { "gui": "#2db448", "cterm": "035", "cterm16": ""}
let s:git_gutter_change = { "gui": "#f2a60d", "cterm": "214", "cterm16": ""}
let s:git_gutter_delete = { "gui": "#ff1414", "cterm": "196", "cterm16": ""}


" +---------------------------------------------------------+
" | Syntax Groups (descriptions and ordering from `:h w18`) |
" +---------------------------------------------------------+

call s:h("Comment", { "fg": s:comment_fg, "gui": "italic", "cterm": "italic" }) " any comment
call s:h("Constant", { "fg": s:cyan }) " any constant
call s:h("String", { "fg": s:green }) " a string constant: "this is a string"
call s:h("Character", { "fg": s:green }) " a character constant: 'c', '\n'
call s:h("Number", { "fg": s:yellow2 }) " a number constant: 234, 0xff
call s:h("Boolean", { "fg": s:yellow2 }) " a boolean constant: TRUE, false
call s:h("Float", { "fg": s:yellow2 }) " a floating point constant: 2.3e10
call s:h("Identifier", { "fg": s:red }) " any variable name
call s:h("Function", { "fg": s:blue }) " function name (also: methods for classes)
call s:h("Statement", { "fg": s:purple }) " any statement
call s:h("Conditional", { "fg": s:purple }) " if, then, else, endif, switch, etc.
call s:h("Repeat", { "fg": s:purple }) " for, do, while, etc.
call s:h("Label", { "fg": s:purple }) " case, default, etc.
call s:h("Operator", {}) " sizeof", "+", "*", etc.
call s:h("Keyword", { "fg": s:red }) " any other keyword
call s:h("Exception", { "fg": s:purple }) " try, catch, throw
call s:h("PreProc", { "fg": s:yellow2 }) " generic Preprocessor
call s:h("Include", { "fg": s:blue }) " preprocessor #include
call s:h("Define", { "fg": s:purple }) " preprocessor #define
call s:h("Macro", { "fg": s:purple }) " same as Define
call s:h("PreCondit", { "fg": s:yellow2 }) " preprocessor #if, #else, #endif, etc.
call s:h("Type", { "fg": s:yellow2 }) " int, long, char, etc.
call s:h("StorageClass", { "fg": s:yellow2 }) " static, register, volatile, etc.
call s:h("Structure", { "fg": s:yellow2 }) " struct, union, enum, etc.
call s:h("Typedef", { "fg": s:yellow2 }) " A typedef
call s:h("Special", { "fg": s:blue }) " any special symbol
call s:h("SpecialChar", {}) " special character in a constant
call s:h("Tag", {}) " you can use CTRL-] on this
call s:h("Delimiter", {}) " character that needs attention
call s:h("SpecialComment", {}) " special things inside a comment
call s:h("Debug", {}) " debugging statements
call s:h("Underlined", {}) " text that stands out, HTML links
call s:h("Ignore", {}) " left blank, hidden
call s:h("Error", { "fg": s:red, "bg": s:gutter_bg }) " any erroneous construct
call s:h("Todo", { "fg": s:purple }) " anything that needs extra attention; mostly the keywords TODO FIXME and XXX

" +----------------------------------------------------------------------+
" | Highlighting Groups (descriptions and ordering from `:h hitest.vim`) |
" +----------------------------------------------------------------------+

call s:h("ColorColumn", { "bg": s:color_column }) " used for the columns set with 'colorcolumn'
call s:h("Conceal", {}) " placeholder characters substituted for concealed text (see 'conceallevel')
call s:h("Cursor", { "fg": s:bg, "bg": s:blue }) " the character under the cursor
call s:h("CursorIM", {}) " like Cursor, but used when in IME mode
call s:h("CursorColumn", { "bg": s:cursor_line }) " the screen column that the cursor is in when 'cursorcolumn' is set
call s:h("CursorLine", { "bg": s:cursor_line }) " the screen line that the cursor is in when 'cursorline' is set
call s:h("Directory", {}) " directory names (and other special names in listings)
call s:h("DiffAdd", { "fg": s:green }) " diff mode: Added line
call s:h("DiffChange", { "fg": s:yellow2 }) " diff mode: Changed line
call s:h("DiffDelete", { "fg": s:red }) " diff mode: Deleted line
call s:h("DiffText", { "fg": s:blue }) " diff mode: Changed text within a changed line
call s:h("ErrorMsg", {}) " error messages on the command line
call s:h("VertSplit", { "fg": s:vertsplit, "bg": s:vertsplit }) " the column separating vertically split windows
call s:h("Folded", {}) " line used for closed folds
call s:h("FoldColumn", {}) " 'foldcolumn'
call s:h("SignColumn", {}) " column where signs are displayed
call s:h("IncSearch", { "fg": s:bg, "bg": s:yellow2 }) " 'incsearch' highlighting; also used for the text replaced with ":s///c"
call s:h("LineNr", { "fg": s:gutter_fg, "bg": s:gutter_bg }) " Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
call s:h("CursorLineNr", {}) " Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
call s:h("MatchParen", { "fg": s:blue, "gui": "underline" }) " The character under the cursor or just before it, if it is a paired bracket, and its match.
call s:h("ModeMsg", {}) " 'showmode' message (e.g., "-- INSERT --")
call s:h("MoreMsg", {}) " more-prompt
call s:h("NonText", { "fg": s:fg }) " '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
call s:h("Normal", { "fg": s:fg, "bg": s:bg }) " normal text
call s:h("Pmenu", { "fg": s:bg, "bg": s:fg }) " Popup menu: normal item.
call s:h("PmenuSel", { "fg": s:fg, "bg": s:blue }) " Popup menu: selected item.
call s:h("PmenuSbar", { "bg": s:visual }) " Popup menu: scrollbar.
call s:h("PmenuThumb", { "bg": s:fg }) " Popup menu: Thumb of the scrollbar.
call s:h("Question", { "fg": s:purple }) " hit-enter prompt and yes/no questions
call s:h("Search", { "fg": s:bg, "bg": s:yellow2 }) " Last search pattern highlighting (see 'hlsearch'). Also used for highlighting the current line in the quickfix window and similar items that need to stand out.
call s:h("SpecialKey", { "fg": s:fg }) " Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
call s:h("SpellBad", { "fg": s:red }) " Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
call s:h("SpellCap", { "fg": s:yellow2 }) " Word that should start with a capital. This will be combined with the highlighting used otherwise.
call s:h("SpellLocal", { "fg": s:yellow2 }) " Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
call s:h("SpellRare", { "fg": s:yellow2 }) " Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
call s:h("StatusLine", { "fg": s:fg, "bg": s:cursor_line }) " status line of current window
call s:h("StatusLineNC", { "fg": s:comment_fg }) " status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
call s:h("TabLine", { "fg": s:comment_fg, "bg": s:cursor_line }) " tab pages line, not active tab page label
call s:h("TabLineFill", { "bg": s:cursor_line }) " tab pages line, where there are no labels
call s:h("TabLineSel", { "fg": s:fg, "bg": s:bg }) " tab pages line, active tab page label
call s:h("Title", { "fg": s:green }) " titles for output from ":set all", ":autocmd" etc.
call s:h("Visual", { "bg": s:visual }) " Visual mode selection
call s:h("VisualNOS", { "bg": s:visual }) " Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
call s:h("WarningMsg", { "fg": s:red }) " warning messages
call s:h("WildMenu", {}) " current match in 'wildmenu' completion

" +--------------------------------+
" | Language-Specific Highlighting |
" +--------------------------------+

call s:h("javaScriptBraces", { "fg": s:fg })
call s:h("javaScriptIdentifier", { "fg": s:purple })
call s:h("javaScriptNull", { "fg": s:yellow2 })
call s:h("javaScriptNumber", { "fg": s:yellow2 })
call s:h("rubyBlockParameterList", { "fg": s:red })
call s:h("rubyInterpolation", { "fg": s:green })
call s:h("rubyInterpolationDelimiter", { "fg": s:red })

" +---------------------+
" | Plugin Highlighting |
" +---------------------+

" Signify, git-gutter
hi link SignifySignAdd              LineNr
hi link SignifySignDelete           LineNr
hi link SignifySignChange           LineNr
call s:h("GitGutterAdd", { "fg": s:green, "bg": s:gutter_bg })
call s:h("GitGutterDelete", { "fg": s:red, "bg": s:gutter_bg })
call s:h("GitGutterChange", { "fg": s:yellow2, "bg": s:gutter_bg })
call s:h("GitGutterChangeDelete", { "fg": s:red, "bg": s:gutter_bg })

" Fugitive
call s:h("diffAdded", { "fg": s:green })
call s:h("diffRemoved", { "fg": s:red })

" +------------------+
" | Git Highlighting |
" +------------------+

call s:h("gitcommitComment", {})
call s:h("gitcommitUnmerged", { "fg": s:green })
call s:h("gitcommitOnBranch", {})
call s:h("gitcommitBranch", { "fg": s:purple })
call s:h("gitcommitDiscardedType", { "fg": s:red })
call s:h("gitcommitSelectedType", { "fg": s:green })
call s:h("gitcommitHeader", {})
call s:h("gitcommitUntrackedFile", { "fg": s:cyan })
call s:h("gitcommitDiscardedFile", { "fg": s:red })
call s:h("gitcommitSelectedFile", { "fg": s:green })
call s:h("gitcommitUnmergedFile", { "fg": s:yellow2 })
call s:h("gitcommitFile", {})
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile
