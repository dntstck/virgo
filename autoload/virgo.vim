command! -nargs=* Virgo call virgo#Run(<f-args>)
cabbrev virgo Virgo

let s:virgo_bin = expand("~/.vim/bundle/virgo/bin/virgo")

function! VirgoRun(...) abort
    if empty(a:000)
        echohl ErrorMsg | echo "Usage: :virgo <action> [crate]" | echohl None
        return
    endif

    let args = trim(join(a:000, " "))

    let output = system("bash -c '" . s:virgo_bin . " " . args . "' 2>&1")

    if v:shell_error
        echohl ErrorMsg
    endif
    echo output
    echohl None
endfunction
