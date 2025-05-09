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
    if type(msg) == v:t_list
        echo join(msg, "\n")
    else
        echo msg
    endif
endfunction

function! VirgoErrorHandler(channel, msg) abort
    if type(msg) == v:t_list
        echohl ErrorMsg | echo join(msg, "\n") | echohl None
    else
        echohl ErrorMsg | echo msg | echohl None
    endif
endfunction
