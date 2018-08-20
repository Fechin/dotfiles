"=============================================================================
" SpaceVim bootstrap method
"=============================================================================

" 设置插入时的光标样式
func! bootstrap#before() abort
  " Change cursor shape between insert and normal mode in iTerm2.app
  if $TERM_PROGRAM =~ "iTerm"
      let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
      let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
  endif

  " Use deoplete.
  let g:python_host_prog = '/Users/Fechin/.pyenv/versions/2.7.15/bin/python2'
  let g:python3_host_prog = '/Users/Fechin/.pyenv/versions/3.7.0/bin/python3'
  let g:deoplete#auto_complete_start_length = 1

  " Use deoplete-jedi instead of jedi-vim
  let g:jedi#completions_enabled = 0

  let g:vimfiler_ignore_pattern = ([
    \ '^\.git$',
    \ '^\.DS_Store$',
    \ '^\.init\.vim-rplugin\~$',
    \ '^\.netrwhist$',
    \ '\.class$',
    \ '\.pyc$',
    \ '^\.'
    \])

endf

" 设置[Space]按键等待时间
func! bootstrap#after() abort
  set timeoutlen=300
endf
