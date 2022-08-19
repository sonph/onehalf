" =============================================================================
" Filename: autoload/lightline/colorscheme/onehalflight.vim
" Author: kerunaru
" License: MIT License
" Last Change: 2021/07/12
" =============================================================================

let s:mono0 = [ '#a0a1a7', 236 ]
let s:mono1 = [ '#e5e5e5', 238 ]
let s:mono2 = [ '#f0f0f0', 243 ]
let s:mono3 = [ '#fafafa', 255 ]

let s:yellow = [ '#c18401', 136 ]
let s:red = [ '#e45649', 167 ]
let s:magenta = [ '#a626a4', 127 ]
let s:blue = [ '#0184bc', 31 ]
let s:cyan = [ '#0997b3', 31 ]
let s:green = [ '#50a14f', 71 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ s:mono3, s:green ], [ s:mono0, s:mono1 ] ]
let s:p.normal.middle = [ [ s:green, s:mono2 ] ]
let s:p.normal.right = [ [ s:mono2, s:green ], [ s:mono0, s:mono1 ] ]

let s:p.normal.error = [ [ s:mono3, s:red ] ]
let s:p.normal.warning = [ [ s:mono3, s:yellow ] ]

let s:p.inactive.left =  [ [ s:mono3, s:mono0 ], [ s:mono3, s:mono0 ] ]
let s:p.inactive.middle = [ [ s:mono1, s:mono3 ] ]
let s:p.inactive.right = [ [ s:mono3, s:mono0 ], [ s:mono0, s:mono2 ] ]

let s:p.insert.left = [ [ s:mono3, s:blue ], [ s:mono0, s:mono1 ] ]
let s:p.insert.middle = [ [ s:blue, s:mono2 ] ]
let s:p.insert.right = [ [ s:mono2, s:blue ], [ s:mono0, s:mono1 ] ]

let s:p.replace.left = [ [ s:mono3, s:red ], [ s:mono0, s:mono1 ] ]
let s:p.replace.middle = [ [ s:red, s:mono2 ] ]
let s:p.replace.right = [ [ s:mono2, s:red ], [ s:mono0, s:mono1 ] ]

let s:p.visual.left = [ [ s:mono3, s:yellow ], [ s:mono0, s:mono1 ] ]
let s:p.visual.middle = [ [ s:yellow, s:mono2 ] ]
let s:p.visual.right = [ [ s:mono2, s:yellow ], [ s:mono0, s:mono1 ] ]

let s:p.tabline.left = [ [ s:mono0, s:mono2] ]
let s:p.tabline.tabsel = [ [ s:mono0, s:mono3 ] ]
let s:p.tabline.middle = [ [ s:mono0, s:mono2] ]
let s:p.tabline.right = [ [ s:mono0, s:mono3 ] ]

let g:lightline#colorscheme#onehalflight#palette = lightline#colorscheme#flatten(s:p)
