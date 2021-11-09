let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'never',
        \ },
    \ }
\ }

set laststatus=0


" " automatically write
" let g:dont_write = v:false
" function! My_Write(timer) abort
" 	let g:dont_write = v:false
" 	write
" endfunction

" function! Delay_My_Write() abort
" 	if g:dont_write
" 		return
" 	end
" 	let g:dont_write = v:true
" 	call timer_start(10000, 'My_Write')
" endfunction

" au TextChanged * ++nested call Delay_My_Write()
" au TextChangedI * ++nested call Delay_My_Write()


"message timeout
let g:firenvim_config = {
    \ 'globalSettings': {
        \ 'cmdlineTimeout': 3000,
    \ }
\ }
