command! -nargs=* Virgo call VirgoRun(<f-args>)
cabbrev virgo Virgo

" Define the absolute path to the Virgo binary
let s:virgo_bin = expand("~/.vim/bundle/virgo/bin/virgo")

" Function to run Virgo commands
function! VirgoRun(...) abort
    if len(a:000) < 2
        echo "Usage: :virgo <action> <crate>"
        return
    endif

    let args = join(a:000, " ")
    let output = system("bash -c '" . s:virgo_bin . " " . args . "'")
    echo output
endfunction
