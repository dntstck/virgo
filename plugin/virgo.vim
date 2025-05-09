let s:virgo_bin = expand("~/.vim/bundle/virgo/bin/virgo")

function! VirgoRun(...) abort
    if empty(a:000)
        echohl ErrorMsg | echo "Usage: :virgo <action> [crate]" | echohl None
        return
    endif

    let args = trim(join(a:000, " "))

    let job_opts = {
        'out_cb': function('VirgoOutputHandler'),
        'err_cb': function('VirgoErrorHandler')
    }

    let job_id = job_start([s:virgo_bin, args], job_opts)

    if job_id == 0
        echohl ErrorMsg | echo "Failed to start Virgo process." | echohl None
    endif
endfunction

function! VirgoOutputHandler(channel, msg) abort
    echo msg
endfunction

function! VirgoErrorHandler(channel, msg) abort
    echohl ErrorMsg | echo msg | echohl None
endfunction
