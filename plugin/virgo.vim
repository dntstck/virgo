command! -nargs=* Virgo call VirgoRun(<f-args>)
cabbrev virgo Virgo

let s:virgo_bin = expand("~/.vim/bundle/virgo/bin") " Adjust path if needed
function! VirgoRun(...) abort
    let args = join(a:000, " ")
    let output = system(s:virgo_bin . " " . args)
    echo output
endfunction


function! VirgoRun(...) abort
    let args = a:000 
    if len(args) < 2
        echo "Usage: :virgo <action> <crate>"
        return
    endif

    let action = args[0]
    let crate = args[1]
    let output = system("virgo " . action . " " . crate)
    echo output
endfunction

