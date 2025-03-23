" .............................................................................
" ycm-core/YouCompleteMe
" .............................................................................

" Find symbol in workspace
nmap <leader>fw <Plug>(YCMFindSymbolInWorkspace)

" Find callers
nmap <leader>fc :YcmCompleter GoToCallers<CR><C-w>_

" Find all references
nmap <leader>fr :YcmCompleter GoToReferences<CR><C-w>_

" Jump to definition
nnoremap <leader>jd :YcmCompleter GoTo<CR>

" Jump to implementation
nmap <leader>ji :YcmCompleter GoToImplementation<CR><C-w>_

" Disable auto popup
let g:ycm_auto_hover = ""
nmap <leader>ho <plug>(YCMHover)

" Shows the full diagnostic text 
nmap <leader>pd :YcmShowDetailedDiagnostic <CR>

" Set background color for YcmWarningSection
" Terminal and tmux should be under 256 color
highlight YcmWarningSection ctermfg=black ctermbg=185
