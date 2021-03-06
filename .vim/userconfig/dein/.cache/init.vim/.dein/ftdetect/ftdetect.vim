" We take care to preserve the user's fileencodings and fileformats,
" because those settings are global (not buffer local), yet we want
" to override them for loading Go files, which are defined to be UTF-8.
let s:current_fileformats = ''
let s:current_fileencodings = ''

" define fileencodings to open as utf-8 encoding even if it's ascii.
function! s:gofiletype_pre(type)
  let s:current_fileformats = &g:fileformats
  let s:current_fileencodings = &g:fileencodings
  set fileencodings=utf-8 fileformats=unix
  let &l:filetype = a:type
endfunction

" restore fileencodings as others
function! s:gofiletype_post()
  let &g:fileformats = s:current_fileformats
  let &g:fileencodings = s:current_fileencodings
endfunction

augroup vim-go-filetype
  autocmd!
  au BufNewFile *.go setfiletype go | setlocal fileencoding=utf-8 fileformat=unix
  au BufRead *.go call s:gofiletype_pre("go")
  au BufReadPost *.go call s:gofiletype_post()

  au BufNewFile *.s setfiletype asm | setlocal fileencoding=utf-8 fileformat=unix
  au BufRead *.s call s:gofiletype_pre("asm")
  au BufReadPost *.s call s:gofiletype_post()

  au BufRead,BufNewFile *.tmpl set filetype=gohtmltmpl
augroup end

" vim: sw=2 ts=2 et
" Detect syntax file.
autocmd BufNewFile,BufRead *.snip,*.snippets set filetype=neosnippet
