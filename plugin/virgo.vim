
command! -nargs=* Virgo call VirgoRun(<f-args>)
cabbrev virgo Virgo " lowercase alias


let s:virgo_bin = expand("~/.vim/bundle/virgo/bin")
" absolute path

function! VirgoRun(...) abort
    let args = join(a:000, " ")
    if len(a:000) < 2
        echo "Usage: :virgo <action> <crate>"
        return
    endif

    let output = system(s:virgo_bin . " " . args)
    echo output
endfunction
