" ==============================================================================
"   Name:        One Half Light
"   Author:      Son A. Pham <sp@sonpham.me>
"   Url:         https://github.com/sonph/onehalf
"   License:     The MIT License (MIT)
"
"   A light vim color scheme based on Atom's One. See github.com/sonph/onehalf
"   for installation instructions, a dark color scheme, versions for other
"   editors/terminals, and a matching theme for vim-airline.
" ==============================================================================

set background=light
highlight clear
syntax reset

let g:colors_name="onehalflight"
let colors_name="onehalflight"

" Colors {
" Format: Color: hex, cterm256
"
" Red: #e45649, 167
" Red (dark): #ca1243, 161
" Green: #50a14f, 071
" Yellow: #986801, 094
" Yellow (light): #c18401, 136
" Blue: #0184bc, 031
" Purple: #a626a4, 127
" Cyan: #0997b3, 031
" White: #fafafa, 231
" Black: #383a42, 237
"
" Fg: #383a42, 237
" Bg: #fafafa, 231
"
" Comment_fg: #a0a1a7, 247
" Gutter_fg: #d4d4d4, 252
" Gutter_bg: #fafafa, 231
"
" Cursor_line: #f0f0f0, 255
" Vertsplit: #f0f0f0, 255
" Color_column: #ededed, 255
" Visual: #bfceff, 153
" }

" User interface colors {
hi Normal guifg=#383a42 ctermfg=237 guibg=#fafafa ctermbg=231
hi NonText guifg=#383a42 ctermfg=237

hi Cursor guifg=#fafafa ctermfg=231 guibg=#0184bc ctermbg=031
" hi CursorIM guifg=#383a42 ctermfg=237
hi CursorColumn guibg=#f0f0f0 ctermbg=255
hi CursorLine guibg=#f0f0f0 ctermbg=255

hi LineNr guifg=#d4d4d4 ctermfg=252 guibg=#fafafa ctermbg=231
hi CursorLineNr guifg=#383a42 ctermfg=237

hi DiffAdd guifg=#50a14f ctermfg=071
hi DiffChange guifg=#c18401 ctermfg=136
hi DiffDelete guifg=#e45649 ctermfg=167
hi DiffText guifg=#0184bc ctermfg=031

hi IncSearch guifg=#fafafa ctermfg=231 guibg=#c18401 ctermbg=136
hi Search guifg=#fafafa ctermfg=231 guibg=#c18401 ctermbg=136

hi ErrorMsg guifg=#383a42 ctermfg=237
hi ModeMsg guifg=#383a42 ctermfg=237
hi MoreMsg guifg=#383a42 ctermfg=237
hi WarningMsg guifg=#e45649 ctermfg=167
hi Question guifg=#a626a4 ctermfg=127

hi Pmenu guifg=#fafafa ctermfg=231 guibg=#383a42 ctermbg=237
hi PmenuSel guifg=#383a42 ctermfg=237 guibg=#0184bc ctermbg=031
hi PmenuSbar guibg=#bfceff ctermbg=153
hi PmenuThumb guibg=#383a42 ctermbg=237

hi SpellBad guifg=#e45649 ctermfg=167
hi SpellCap guifg=#c18401 ctermfg=136
hi SpellLocal guifg=#c18401 ctermfg=136
hi SpellRare guifg=#c18401 ctermfg=136

hi StatusLine guifg=#383a42 ctermfg=237 guibg=#f0f0f0 ctermbg=255
hi StatusLineNC guifg=#a0a1a7 ctermfg=247
hi TabLine guifg=#a0a1a7 ctermfg=247 guibg=#f0f0f0 ctermbg=255
hi TabLineFill guibg=#f0f0f0 ctermbg=255
hi TabLineSel guifg=#383a42 ctermfg=237 guibg=#fafafa ctermbg=231

hi Visual guibg=#bfceff ctermbg=153
hi VisualNOS guibg=#bfceff ctermbg=153

hi ColorColumn guibg=#ededed ctermbg=255
hi Conceal guifg=#383a42 ctermfg=237
hi Directory guifg=#0184bc ctermfg=031
hi VertSplit guifg=#f0f0f0 ctermfg=255 guibg=#f0f0f0 ctermbg=255
hi Folded guifg=#383a42 ctermfg=237
hi FoldColumn guifg=#383a42 ctermfg=237
hi SignColumn guifg=#383a42 ctermfg=237

hi MatchParen guifg=#0184bc ctermfg=031
hi SpecialKey guifg=#383a42 ctermfg=237
hi Title guifg=#50a14f ctermfg=071
hi WildMenu guifg=#383a42 ctermfg=237
" }

" Syntax colors {
hi Comment guifg=#a0a1a7
hi Constant guifg=#0997b3
hi String guifg=#50a14f
hi Character guifg=#50a14f
hi Number guifg=#c18401
hi Boolean guifg=#c18401
hi Float guifg=#c18401

hi Identifier guifg=#e45649 ctermfg=167
hi Function guifg=#0184bc ctermfg=031
hi Statement guifg=#a626a4 ctermfg=127

hi Conditional guifg=#a626a4 ctermfg=127
hi Repeat guifg=#a626a4 ctermfg=127
hi Label guifg=#a626a4 ctermfg=127
hi Operator guifg=#383a42 ctermfg=237
hi Keyword guifg=#e45649 ctermfg=167
hi Exception guifg=#a626a4 ctermfg=127

hi PreProc guifg=#c18401 ctermfg=136
hi Include guifg=#0184bc ctermfg=031
hi Define guifg=#a626a4 ctermfg=127
hi Macro guifg=#a626a4 ctermfg=127
hi PreCondit guifg=#c18401 ctermfg=136

hi Type guifg=#c18401 ctermfg=136
hi StorageClass guifg=#c18401 ctermfg=136
hi Structure guifg=#c18401 ctermfg=136
hi Typedef guifg=#c18401 ctermfg=136

hi Special guifg=#0184bc ctermfg=031
hi SpecialChar guifg=#383a42 ctermfg=237
hi Tag guifg=#383a42 ctermfg=237
hi Delimiter guifg=#383a42 ctermfg=237
hi SpecialComment guifg=#383a42 ctermfg=237
hi Debug guifg=#383a42 ctermfg=237
hi Underlined guifg=#383a42 ctermfg=237
hi Ignore guifg=#383a42 ctermfg=237
hi Error guifg=#e45649 ctermfg=167 guibg=#fafafa ctermbg=231
hi Todo guifg=#a626a4 ctermfg=127
" }

" Plugins {
" GitGutter
hi GitGutterAdd guifg=#50a14f ctermfg=071 guibg=#fafafa ctermbg=231
hi GitGutterDelete guifg=#e45649 ctermfg=167 guibg=#fafafa ctermbg=231
hi GitGutterChange guifg=#c18401 ctermfg=136 guibg=#fafafa ctermbg=231
hi GitGutterChangeDelete guifg=#e45649 ctermfg=167 guibg=#fafafa ctermbg=231
" Fugitive
hi diffAdded guifg=#50a14f ctermfg=071
hi diffRemoved guifg=#e45649 ctermfg=167
" }

" Git {
hi gitcommitComment guifg=#a0a1a7 ctermfg=247
hi gitcommitUnmerged guifg=#e45649 ctermfg=167
hi gitcommitOnBranch guifg=#383a42 ctermfg=237
hi gitcommitBranch guifg=#a626a4 ctermfg=127
hi gitcommitDiscardedType guifg=#e45649 ctermfg=167
hi gitcommitSelectedType guifg=#50a14f ctermfg=071
hi gitcommitHeader guifg=#383a42 ctermfg=237
hi gitcommitUntrackedFile guifg=#0997b3 ctermfg=031
hi gitcommitDiscardedFile guifg=#e45649 ctermfg=167
hi gitcommitSelectedFile guifg=#50a14f ctermfg=071
hi gitcommitUnmergedFile guifg=#c18401 ctermfg=136
hi gitcommitFile guifg=#383a42 ctermfg=237
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile
" }