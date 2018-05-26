"=============================================================================
" vimrc --- Entry file for vim
" Copyright (c) 2016-2017 Shidong Wang & Contributors
" Author: Shidong Wang < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

" 设置插入时的光标样式
func! custom#before() abort
  " Change cursor shape between insert and normal mode in iTerm2.app
  if $TERM_PROGRAM =~ "iTerm"
      let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
      let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
  endif
endf

" 设置[Space]按键等待时间
func! custom#after() abort
  set timeoutlen=300
  " Use deoplete.
  let g:python_host_prog = '/Users/Fechin/.pyenv/versions/2.7.15/bin/python'
  let g:python3_host_prog = '/Users/Fechin/.pyenv/versions/3.6.5/bin/python3'
endf
