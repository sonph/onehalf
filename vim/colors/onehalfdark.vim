" ==============================================================================
"   Name:        One Half Dark
"   Author:      Son A. Pham <sp@sonpham.me>
"   Url:         https://github.com/sonph/onehalf
"   License:     The MIT License (MIT)
"
"   A dark vim color scheme based on Atom's One. See github.com/sonph/onehalf
"   for installation instructions, a light color scheme, versions for other
"   editors/terminals, and a matching theme for vim-airline.
" ==============================================================================

set background=dark
highlight clear
syntax reset

let g:colors_name="onehalfdark"
let colors_name="onehalfdark"

" Colors {
" Format: Color: hex, cterm256
"
" Red: #e06c75, 168
" Red (dark): #be5046, 131
" Green: #98c379, 114
" Yellow: #d19a66, 173
" Yellow (light): #e5c07b, 180
" Blue: #61afef, 075
" Purple: #c678dd, 176
" Cyan: #56b6c2, 073
" White: #dcdfe4, 188
" Black: #282c34, 236
"
" Fg: #dcdfe4, 188
" Bg: #282c34, 236
"
" Comment_fg: #5c6370, 241
" Gutter_fg: #919baa, 247
" Gutter_bg: #282c34, 236
"
" Cursor_line: #313640, 237
" Vertsplit: #313640, 237
" Color_column: #313640, 237
" Visual: #474e5d, 239
" }

" User interface colors {
hi Normal guifg=#dcdfe4 ctermfg=188 guibg=#282c34 ctermbg=236
hi NonText guifg=#dcdfe4 ctermfg=188

hi Cursor guifg=#282c34 ctermfg=236 guibg=#61afef ctermbg=075
" hi CursorIM guifg=#dcdfe4 ctermfg=188
hi CursorColumn guibg=#313640 ctermbg=237
hi CursorLine guibg=#313640 ctermbg=237

hi LineNr guifg=#919baa ctermfg=247 guibg=#282c34 ctermbg=236
hi CursorLineNr guifg=#dcdfe4 ctermfg=188

hi DiffAdd guifg=#98c379 ctermfg=114
hi DiffChange guifg=#e5c07b ctermfg=180
hi DiffDelete guifg=#e06c75 ctermfg=168
hi DiffText guifg=#61afef ctermfg=075

hi IncSearch guifg=#282c34 ctermfg=236 guibg=#e5c07b ctermbg=180
hi Search guifg=#282c34 ctermfg=236 guibg=#e5c07b ctermbg=180

hi ErrorMsg guifg=#dcdfe4 ctermfg=188
hi ModeMsg guifg=#dcdfe4 ctermfg=188
hi MoreMsg guifg=#dcdfe4 ctermfg=188
hi WarningMsg guifg=#e06c75 ctermfg=168
hi Question guifg=#c678dd ctermfg=176

hi Pmenu guifg=#282c34 ctermfg=236 guibg=#dcdfe4 ctermbg=188
hi PmenuSel guifg=#dcdfe4 ctermfg=188 guibg=#61afef ctermbg=075
hi PmenuSbar guibg=#474e5d ctermbg=239
hi PmenuThumb guibg=#dcdfe4 ctermbg=188

hi SpellBad guifg=#e06c75 ctermfg=168
hi SpellCap guifg=#e5c07b ctermfg=180
hi SpellLocal guifg=#e5c07b ctermfg=180
hi SpellRare guifg=#e5c07b ctermfg=180

hi StatusLine guifg=#dcdfe4 ctermfg=188 guibg=#313640 ctermbg=237
hi StatusLineNC guifg=#5c6370 ctermfg=241
hi TabLine guifg=#5c6370 ctermfg=241 guibg=#313640 ctermbg=237
hi TabLineFill guibg=#313640 ctermbg=237
hi TabLineSel guifg=#dcdfe4 ctermfg=188 guibg=#282c34 ctermbg=236

hi Visual guibg=#474e5d ctermbg=239
hi VisualNOS guibg=#474e5d ctermbg=239

hi ColorColumn guibg=#313640 ctermbg=237
hi Conceal guifg=#dcdfe4 ctermfg=188
hi Directory guifg=#61afef ctermfg=075
hi VertSplit guifg=#313640 ctermfg=237 guibg=#313640 ctermbg=237
hi Folded guifg=#dcdfe4 ctermfg=188
hi FoldColumn guifg=#dcdfe4 ctermfg=188
hi SignColumn guifg=#dcdfe4 ctermfg=188

hi MatchParen guifg=#61afef ctermfg=075
hi SpecialKey guifg=#dcdfe4 ctermfg=188
hi Title guifg=#98c379 ctermfg=114
hi WildMenu guifg=#dcdfe4 ctermfg=188
" }

" Syntax colors {
hi Comment guifg=#5c6370
hi Constant guifg=#56b6c2
hi String guifg=#98c379
hi Character guifg=#98c379
hi Number guifg=#e5c07b
hi Boolean guifg=#e5c07b
hi Float guifg=#e5c07b

hi Identifier guifg=#e06c75 ctermfg=168
hi Function guifg=#61afef ctermfg=075
hi Statement guifg=#c678dd ctermfg=176

hi Conditional guifg=#c678dd ctermfg=176
hi Repeat guifg=#c678dd ctermfg=176
hi Label guifg=#c678dd ctermfg=176
hi Operator guifg=#dcdfe4 ctermfg=188
hi Keyword guifg=#e06c75 ctermfg=168
hi Exception guifg=#c678dd ctermfg=176

hi PreProc guifg=#e5c07b ctermfg=180
hi Include guifg=#61afef ctermfg=075
hi Define guifg=#c678dd ctermfg=176
hi Macro guifg=#c678dd ctermfg=176
hi PreCondit guifg=#e5c07b ctermfg=180

hi Type guifg=#e5c07b ctermfg=180
hi StorageClass guifg=#e5c07b ctermfg=180
hi Structure guifg=#e5c07b ctermfg=180
hi Typedef guifg=#e5c07b ctermfg=180

hi Special guifg=#61afef ctermfg=075
hi SpecialChar guifg=#dcdfe4 ctermfg=188
hi Tag guifg=#dcdfe4 ctermfg=188
hi Delimiter guifg=#dcdfe4 ctermfg=188
hi SpecialComment guifg=#dcdfe4 ctermfg=188
hi Debug guifg=#dcdfe4 ctermfg=188
hi Underlined guifg=#dcdfe4 ctermfg=188
hi Ignore guifg=#dcdfe4 ctermfg=188
hi Error guifg=#e06c75 ctermfg=168 guibg=#282c34 ctermbg=236
hi Todo guifg=#c678dd ctermfg=176
" }

" Language specific
hi javaScriptBraces guifg=#dcdfe4 ctermfg=188
hi javaScriptIdentifier guifg=#c678dd ctermfg=176
hi javaScriptNull guifg=#e5c07b ctermfg=180
hi javaScriptNumber guifg=#e5c07b ctermfg=180
hi rubyBlockParameterList guifg=#e06c75 ctermfg=168
hi rubyInterpolation guifg=#98c379 ctermfg=114
hi rubyInterpolationDelimiter guifg=#e06c75 ctermfg=168

" Plugins {
" GitGutter
hi GitGutterAdd guifg=#98c379 ctermfg=114 guibg=#282c34 ctermbg=236
hi GitGutterDelete guifg=#e06c75 ctermfg=168 guibg=#282c34 ctermbg=236
hi GitGutterChange guifg=#e5c07b ctermfg=180 guibg=#282c34 ctermbg=236
hi GitGutterChangeDelete guifg=#e06c75 ctermfg=168 guibg=#282c34 ctermbg=236
" Fugitive
hi diffAdded guifg=#98c379 ctermfg=114
hi diffRemoved guifg=#e06c75 ctermfg=168
" }

" Git {
hi gitcommitComment guifg=#5c6370 ctermfg=241
hi gitcommitUnmerged guifg=#e06c75 ctermfg=168
hi gitcommitOnBranch guifg=#dcdfe4 ctermfg=188
hi gitcommitBranch guifg=#c678dd ctermfg=176
hi gitcommitDiscardedType guifg=#e06c75 ctermfg=168
hi gitcommitSelectedType guifg=#98c379 ctermfg=114
hi gitcommitHeader guifg=#dcdfe4 ctermfg=188
hi gitcommitUntrackedFile guifg=#56b6c2 ctermfg=073
hi gitcommitDiscardedFile guifg=#e06c75 ctermfg=168
hi gitcommitSelectedFile guifg=#98c379 ctermfg=114
hi gitcommitUnmergedFile guifg=#e5c07b ctermfg=180
hi gitcommitFile guifg=#dcdfe4 ctermfg=188
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile
" }