" Append template to new C++ files
" autocmd BufNewFile *.cpp 0r /Users/nguyenlaso42/Desktop/CSES/Lib/template.cpp

function TemplateCP()
	:read /Users/nguyenlaso42/Desktop/CSES/Lib/template.cpp
endfunction


"command! -nargs=0 CompileAndRun call TermWrapper(printf('g++ -std=c++17 %s && ./a.out' , expand('%')))
autocmd FileType cpp nnoremap <C-b> :w <CR> :!g++-11 % -o a<CR>
