command! -nargs=* Virgo call VirgoRun(<f-args>)
cabbrev virgo Virgo

let s:virgo_bin = expand("~/.vim/bundle/virgo/bin/virgo")

function! VirgoRun(...) abort
    if empty(a:000)
        echohl ErrorMsg | echo "Usage: :virgo <action> [crate]" | echohl None
        return
    endif

    let args = trim(join(a:000, " "))

    let job_opts = {}
    let job_opts['out_cb'] = function('VirgoOutputHandler')
    let job_opts['err_cb'] = function('VirgoErrorHandler')

    let job_id = job_start([s:virgo_bin, args], job_opts)

    if type(job_id) != v:t_job
        echohl ErrorMsg | echo "Failed to start Virgo process." | echohl None
    endif
endfunction

function! VirgoOutputHandler(channel, msg) abort
    let output = (type(a:msg) == v:t_list) ? join(a:msg, "\n") : a:msg
    " Use :redir to capture full output in a scratch buffer
    redir => virgo_log
    silent! echo output
    redir END
    vnew
    setlocal buftype=nofile bufhidden=hide noswapfile
    call setline(1, split(virgo_log, "\n"))
endfunction

function! VirgoDisplayOutput(msg) abort
    " Open a new scratch buffer for Virgo output
    execute "silent! botright vnew VirgoOutput"
    setlocal buftype=nofile bufhidden=hide noswapfile
    call setline(1, split(a:msg, "\n"))
endfunction


function! VirgoErrorHandler(channel, msg) abort
    if !empty(a:msg)
        echohl ErrorMsg | echo a:msg | echohl None
    else
        echohl ErrorMsg | echo "Unknown error occurred." | echohl None
    endif
endfunction
