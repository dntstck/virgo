function! VirgoRun(...) abort
    if empty(a:000)
        echohl ErrorMsg | echo "Usage: :virgo <action> [crate]" | echohl None
        return
    endif

    let args = trim(join(a:000, " "))

    let job_id = job_start([s:virgo_bin, args], {
        'out_cb': {channel, msg -> echo msg},
        'err_cb': {channel, msg -> echohl ErrorMsg | echo msg | echohl None}
    })

    if job_id == 0
        echohl ErrorMsg | echo "Failed to start Virgo process." | echohl None
    endif
endfunction

