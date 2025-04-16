command! -nargs=* Virgo call VirgoRun(<f-args>)

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

