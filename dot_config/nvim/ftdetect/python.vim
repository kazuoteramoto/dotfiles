fun! s:DetectUv()
    if getline(1) == '#!/usr/bin/env -S uv run --script'
        set ft=python
    endif
endfun

autocmd BufNewFile,BufRead * call s:DetectUv()
