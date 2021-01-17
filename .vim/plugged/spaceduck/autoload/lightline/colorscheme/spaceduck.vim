" ============================================================
" spaceduck
" 
" URL: https://github.com/pineapplegiant/spaceduck
" Author: Guillermo Rodriguez
" License: MIT
" Last Change: 2020/12/10 16:23
" ============================================================

let s:p = {"normal": {}, "inactive": {}, "insert": {}, "replace": {}, "visual": {}, "tabline": {} }

let s:p.normal.left = [[["#000000", 0], ["#2e3459", 236]], [["#2e3459", 236], ["#686f9a", 60]]]
let s:p.normal.middle = [[["#686f9a", 60], ["#272c42", 236]]]
let s:p.normal.right = [[["#000000", 0], ["#2e3459", 236]], [["#686f9a", 60], ["#272c42", 236]]]
let s:p.normal.error = [[["#000000", 0], ["#e33400", 166]]]
let s:p.normal.warning = [[["#000000", 0], ["#e39400", 172]]]

let s:p.inactive.left = [[["#686f9a", 60], ["#272c42", 236]], [["#686f9a", 60], ["#272c42", 236]]]
let s:p.inactive.middle = [[["#686f9a", 60], ["#272c42", 236]]]
let s:p.inactive.right = [[["#686f9a", 60], ["#272c42", 236]], [["#686f9a", 60], ["#272c42", 236]]]

let s:p.insert.left = [[["#000000", 0], ["#5ccc96", 78]], [["#2e3459", 236], ["#686f9a", 60]]]
let s:p.insert.middle = [[["#686f9a", 60], ["#272c42", 236]]]
let s:p.insert.right = [[["#000000", 0], ["#5ccc96", 78]], [["#686f9a", 60], ["#272c42", 236]]]

let s:p.replace.left = [[["#000000", 0], ["#7a5ccc", 98]], [["#2e3459", 236], ["#686f9a", 60]]]
let s:p.replace.middle = [[["#686f9a", 60], ["#272c42", 236]]]
let s:p.replace.right = [[["#000000", 0], ["#7a5ccc", 98]], [["#686f9a", 60], ["#272c42", 236]]]

let s:p.visual.left = [[["#000000", 0], ["#f2ce00", 220]], [["#2e3459", 236], ["#686f9a", 60]]]
let s:p.visual.middle = [[["#686f9a", 60], ["#272c42", 236]]]
let s:p.visual.right = [[["#000000", 0], ["#f2ce00", 220]], [["#686f9a", 60], ["#272c42", 236]]]

let s:p.tabline.left = [[["#000000", 0], ["#2e3459", 236]]]
let s:p.tabline.tabsel = [[["#2e3459", 236], ["#686f9a", 60]]]
let s:p.tabline.middle = [[["#686f9a", 60], ["#272c42", 236]]]
let s:p.tabline.right = [[["#000000", 0], ["#2e3459", 236]]]

let g:lightline#colorscheme#spaceduck#palette = lightline#colorscheme#flatten(s:p)

" ===================================
" Generated by Estilo 1.5.0
" https://github.com/jacoborus/estilo
" ===================================