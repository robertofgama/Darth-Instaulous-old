" Arquivo de Configuração do NVIM
" Nome: init.vim
" Local: ~/.config/nvim

" https://github.com/thalesmello/slides/tree/master/2017/neovim-from-scratch
" https://www.youtube.com/watch?v=kZDT10nFiTY
"call plug#begin()
"Plug 'morhetz/gruvbox'
"Plug 'terryma/vim-multiple-cursors'
"call plug#end()

"colorscheme gruvbox
"set background=dark

set hidden "Habilita carregamento de arquivos e deixar aquivos editados na memória
set number "Habilita Linhas
set relativenumber "Habilita numeros relativos
set mouse=a "Habilita o suporte a mouse
set inccommand=split "Gera alterações em tempo real dos comandos

let mapleader="\<space>" "Define Espaço como Leader Key, tecla para comandos personalizados
nnoremap <leader>; A;<esc> " n= Modo Normal; nore = No recursive (Comando não expande em outra macros definidas); map = define o atalho;

nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
