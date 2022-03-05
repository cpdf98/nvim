" Author: liuchengxu <xuliuchengxlc@gmail.com>
" Description: Clap theme based on the material_design_dark theme.

let s:save_cpo = &cpoptions
set cpoptions&vim

let s:palette = {}

let s:palette.display = { 'ctermbg': '235', 'guibg': '#151515' }

" Let ClapInput, ClapSpinner and ClapSearchText use the same background.
let s:bg0 = { 'ctermbg': '60', 'guibg': '#151515' }
let s:palette.input = s:bg0
let s:palette.indicator = extend({ 'ctermfg': '238', 'guifg':'#151515' }, s:bg0)
let s:palette.spinner = extend({ 'ctermfg': '11', 'guifg':'#151515', 'cterm': 'bold', 'gui': 'bold'}, s:bg0)
let s:palette.search_text = extend({ 'ctermfg': '195', 'guifg': '#CADFF3', 'cterm': 'bold', 'gui': 'bold' }, s:bg0)

let s:palette.preview = { 'ctermbg': '238', 'guibg': '#151515' }

let s:palette.selected = { 'ctermfg': '81', 'guifg': '#151515', 'cterm': 'bold,underline', 'gui': 'bold,underline' }
let s:palette.current_selection = { 'ctermbg': '236', 'guibg': '#151515', 'cterm': 'bold', 'gui': 'bold' }

let s:palette.selected_sign = { 'ctermfg': '196', 'guifg': '#151515' }
let s:palette.current_selection_sign = s:palette.selected_sign

let g:clap#themes#jellybeans#palette = s:palette

let &cpoptions = s:save_cpo
unlet s:save_cpo

let g:indentLine_fileTypeExclude = ['clap']
