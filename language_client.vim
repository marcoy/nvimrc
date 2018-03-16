"
" LanguageClient
"
let g:LanguageClient_serverCommands = {
    \ 'haskell': ['hie', '--lsp'],
    \ }
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>

