command! -nargs=* Virgo call VirgoRun(<f-args>)
cabbrev virgo Virgo

let s:virgo_bin = expand("~/.vim/bundle/virgo/bin/virgo")

function! VirgoRun(...) abort
    if empty(a:000)
        echohl ErrorMsg | echo "Usage: :virgo <action> [crate]" | echohl None
        return
    endif

    let args = [s:virgo_bin] + a:000

    let job_opts = {
        \ 'pty': 1,
        \ 'out_cb': function('VirgoTerminalOutputHandler'),
        \ 'err_cb': function('VirgoErrorHandler')
    \ }

    let job_id = job_start(args, job_opts)

    if type(job_id) != v:t_job
        echohl ErrorMsg | echo "Failed to start Virgo process." | echohl None
    endif
endfunction

function! VirgoTerminalOutputHandler(channel, msg) abort
    if empty(a:msg)
        return
    endif

    let msg_list = type(a:msg) == v:t_list ? a:msg : [a:msg]
    let safe_msg_list = map(msg_list, {_, v -> substitute(v, '["]', '\\&', 'g')})

    for line in safe_msg_list
        redraw
        echo line
    endfor
endfunction




function! VirgoErrorHandler(channel, msg) abort
    if !empty(a:msg)
        echohl ErrorMsg
        echom join(type(a:msg) == v:t_list ? a:msg : [a:msg], "\n")
        echohl None
    else
        echohl ErrorMsg | echo "Unknown error occurred." | echohl None
    endif
endfunction
