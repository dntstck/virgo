command! -nargs=* Virgo call VirgoRun(<f-args>)
cabbrev virgo Virgo

let s:virgo_bin = expand("~/.vim/bundle/virgo/bin/virgo")

function! VirgoRun(...) abort
    if empty(a:000)
        echohl ErrorMsg | echo "Usage: :virgo <action> [crate]" | echohl None
        return
    endif

    let args = [s:virgo_bin] + a:000

    let job_opts = {}
    let job_opts['out_cb'] = function('VirgoOutputHandler')
    let job_opts['err_cb'] = function('VirgoErrorHandler')

    let job_id = job_start(args, job_opts)

    if type(job_id) != v:t_job
        echohl ErrorMsg | echo "Failed to start Virgo process." | echohl None
    endif
endfunction


function! VirgoOutputHandler(channel, msg) abort
    if empty(a:msg)
        return
    endif

    let win_exists = bufexists('VirgoOutput')
    if !win_exists
        execute "silent! belowright split VirgoOutput"
        setlocal buftype=nofile bufhidden=hide noswapfile
    endif
    autocmd BufEnter VirgoOutput setlocal syntax=off
    call setline('$', type(a:msg) == v:t_list ? a:msg : [a:msg])
    normal! G
endfunction


function! VirgoErrorHandler(channel, msg) abort
    if !empty(a:msg)
        echohl ErrorMsg | echo a:msg | echohl None
    else
        echohl ErrorMsg | echo "Unknown error occurred." | echohl None
    endif
endfunction
