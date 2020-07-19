" version info of dotvim
let g:dotvim_version = "0.0.1"
" disable all keymaps of plugins
let g:dotvim_disable_mappings = 0
" disable some plugins keymap
let g:dotvim_disable_pmaping = []

if &compatible
	set nocompatible        " 关闭兼容模式
endif

" Set main configuration directory as parent directory
let $VIM_PATH = fnamemodify(resolve(expand('<sfile>:p')), ':h:h')

" Disable vim distribution plugins
let g:loaded_gzip = 1
let g:loaded_tar = 1
let g:loaded_tarPlugin = 1
let g:loaded_zip = 1
let g:loaded_zipPlugin = 1

let g:loaded_getscript = 1
let g:loaded_getscriptPlugin = 1
let g:loaded_vimball = 1
let g:loaded_vimballPlugin = 1

let g:loaded_matchit = 1
let g:loaded_matchparen = 1
let g:loaded_2html_plugin = 1
let g:loaded_logiPat = 1
let g:loaded_rrhelper = 1

let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1

" Initialize base requirements
if has('vim_starting')
    " Golbal Mappings
    " User spacebar as leader
    " Required before loading plugins!
    let g:mapleader = "\<Space>"
    let g:maplocalleader=";"

    " Release keymappings prefixes, evict entirely for use of plug-ins.
    nnoremap <Space>  <Nop>
    xnoremap <Space>  <Nop>
    nnoremap ,        <Nop>
    xnoremap ,        <Nop>
    nnoremap ;        <Nop>
    xnoremap ;        <Nop>
endif

call utils#source_file($VIM_PATH, 'core/packman.vim')
call utils#source_file($VIM_PATH, 'core/general.vim')
call utils#source_file($VIM_PATH, 'core/filetype.vim')

" Load key map
call utils#source_file($VIM_PATH,'keybinds/keybinds.vim')

" Initialize user favorite colorscheme
call theme#init()


set secure

" vim: set ts=2 sw=2 tw=80 noet :
