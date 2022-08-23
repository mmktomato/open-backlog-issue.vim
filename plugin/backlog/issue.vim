if !has('vim9script')
    command! OpenBacklogIssue call backlog#issue#open()
    nnoremap <silent> <Plug>(open-backlog-issue) :call backlog#issue#open()<CR>

    finish
endif

vim9script
import autoload "backlog/issue.vim"

command! OpenBacklogIssue issue.Open()
nnoremap <silent> <Plug>(open-backlog-issue) :OpenBacklogIssue<CR>
