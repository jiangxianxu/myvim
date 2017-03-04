set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

syntax enable
syntax on
set t_Co=256
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai
"colorscheme evening
"colorscheme solarized

" hilight function name
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
"(上面两行为了匹配函数名的，为下面的给函数名定义颜色做准备)
hi cfunctions ctermfg=81
"(这一行就是给函数名加颜色的)
"(同理，下面这几行是给其他元素加颜色的。有几点需要澄清以下。
"1. 默认这个 molokai.vim 是没有给函数名加颜色的，所以我自己筛选出函数名并给它添加颜色
"2. 下面那几行是我修改的，因为 molokai.vim 里的颜色我觉得不是很好看，就自己改了一下，你也改成你喜欢的颜色，
"不光这几行，配置文件里的每一行都可以改
"3. 因为 colo molokai 这一句写在前面，我的修改在后面执行，所以这些修改会生效，
"如果你把 colo molokai 这句移到了后面，那么你的修改就会被 molokai.vim 里的值覆盖了
"4. 尽量不要在 molokai.vim 里面直接修改颜色值，而是采用这种覆盖的方式，先加载默认值，再加载自定义的值)
hi Type ctermfg=118 cterm=none
hi Structure ctermfg=118 cterm=none
hi Macro ctermfg=161 cterm=bold
hi PreCondit ctermfg=161 cterm=bold
set cursorline "(设置光标行，效果相当棒，光标移到哪一行，哪一行的行号就变成了浅黄色，相当的动感)
"hi CursorLine cterm=underline（这句我给注掉了，是让光标所在行整一行都显示下划线的，就是加一条水平下划线）

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>a :cs add /data/work/
nmap <C-\>l :Tlist<CR>
nmap <C-\>ll :TlistOpen<CR>
source ~/.vim/plugin/mark.vim

"find \( -name "*.c" -o -name "*.h" -o -name "*.S" -o -name "*.s" \) > cscope.files
"ctags -R --c++-kinds=+p --fields=+iaS --extra=+q
set completeopt=menu,menuone  
let OmniCpp_MayCompleteDot=1    "打开.操作符
let OmniCpp_MayCompleteArrow=1  "打开->操作符
let OmniCpp_MayCompleteScope=1  "打开::操作符
let OmniCpp_NamespaceSearch=1   "打开命名空间
let OmniCpp_GlobalScopeSearch=1  
let OmniCpp_DefaultNamespace=["std"]  
let OmniCpp_ShowPrototypeInAbbr=1  "打开显示函数原型
let OmniCpp_SelectFirstItem = 2    "自动弹出时自动跳至第一个
"set tags+=/home/linux/work/linux-2.6.32.2/tags

"execute pathogen#infect()
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
