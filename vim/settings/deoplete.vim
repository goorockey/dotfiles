" 自启动
let g:deoplete#enable_at_startup = 1
" smart case不解释
let g:deoplete#enable_smart_case = 1

" 用户输入至少两个字符时再开始提示补全
call deoplete#custom#source('LanguageClient',
            \ 'min_pattern_length',
            \ 2)

" 字符串中不补全
call deoplete#custom#source('_',
            \ 'disabled_syntaxes', ['String']
            \ )

" 补全结束或离开插入模式时，关闭预览窗口
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" 忽略一些没意思的completion source。
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources._ = ['buffer', 'around']
let g:deoplete#ignore_sources.javascript = ["omni", "flow"]
let g:deoplete#ignore_sources.go = ["buffer", "syntax"]
