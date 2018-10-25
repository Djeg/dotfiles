colorscheme zellner
set guifont=Monaco\ 16
hi StatusLine guibg=White guifg=White

nmap <silent> <leader>c :call ToggleCursor()<cr>

function! ToggleCursor()
    if &guicursor ==# 'n-v-c:100-cursor'
        set guicursor=n-v-c:100-icursor
    else
        set guicursor=n-v-c:100-cursor
    endif
endfunction
