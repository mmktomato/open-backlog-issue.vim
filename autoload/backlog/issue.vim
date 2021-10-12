function! s:find_backlog_issue_key(line, caret_pos) abort
    let search_pos = 0

    while -1 < search_pos
        let [issue_key, start, end] = matchstrpos(a:line, '\C[A-Z_]\+-[0-9]\+', search_pos)

        if start <= a:caret_pos && a:caret_pos <= (end - 1)
            return issue_key
        endif

        let search_pos = end
    endwhile

    return ''
endfunction

function! s:warn(msg) abort
    execute 'echohl' 'WarningMsg'
    try
        echomsg a:msg
    finally
        echohl None
    endtry
endfunction

function! backlog#issue#open() abort
    if globpath(&rtp, 'plugin/openbrowser.vim') == ''
        call s:warn('You have to install open-browser.vim. See help or README.md.')
        return
    endif

    if g:open_backlog_issue_prefix == ''
        call s:warn('g:open_backlog_issue_prefix is not set')
        return
    endif

    let issue_key = s:find_backlog_issue_key(getline('.'), col('.') - 1)

    if issue_key != ''
        let url = g:open_backlog_issue_prefix . '/view/' . issue_key
        call openbrowser#open(url)
    endif
endfunction
