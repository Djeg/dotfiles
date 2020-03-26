nmap <buffer> <silent> <Leader>ip :TsuImport<CR>
nmap <buffer> <silent> <Leader>dd :TsuTypeDefinition<CR>
nmap <buffer> <silent> <Leader>ff :TsuReferences<CR>
nmap <buffer> <silent> <Leader>rr :TsuRenameSymbol<CR>

au BufWritePre *.ts :PrettierAsync<CR>
au BufWritePre *.tsx :PrettierAsync<CR>
au BufWritePre *.css :PrettierAsync<CR>
au BufWritePre *.html :PrettierAsync<CR>
