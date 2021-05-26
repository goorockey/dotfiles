" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vim-plug plugin manager.
" Once you've updated the list of plugin, you can run plugin update by issuing
" the command :PlugInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/plugged.vim -N "+set hidden" "+syntax on" +PlugClean! +PlugInstall +qall

if empty(glob('~/.vim' . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source %
endif

set rtp+=~/.vim/plugged/ "Submodules

" Directory for plugins
call plug#begin('~/.vim/bundle')

" YADR's plugins are split up by category into smaller files
" This reduces churn and makes it easier to fork. See
" ~/.vim/plugged/ to edit them:
runtime ruby.vundle
runtime languages.vundle
runtime git.vundle
runtime appearance.vundle
runtime textobjects.vundle
runtime search.vundle
runtime project.vundle
runtime vim-improvements.vundle

" The plugins listed in ~/.vim/.vundles.local will be added here to
" allow the user to add vim plugins to yadr without the need for a fork.
if filereadable(expand("~/.yadr/vim/.vundles.local"))
  source ~/.yadr/vim/.vundles.local
endif

" All of your Plugins must be added before the following line
call plug#end()            " required
