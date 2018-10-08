# Vim configuration for sunjoo

## Install
* Clone this repository  as ${HOME}/.vim
* Copy .vimrc into ${HOME}
```bash
cp ${HOME}/.vim/.vimrc ~/
```
* Move to ${HOME}/.vim and update all submodules
```bash
$> cd ~/.vim
$> git submodule update --init --recursive
```
* Install YouCompleteMe plugin
```bash
$> cd ~/.vim/bundle/YouCompleteMe/
$> ./install.py --clang-completer --go-completer
```

## Plugins
### Airline
* https://github.com/vim-airline/vim-airline
* Status/Tabline tools

### gutantag_plus
* Links
  * https://github.com/skywind3000/gutentags_plus
  * https://github.com/ludovicchabant/vim-gutentags
* Required Tools 
  * https://ctags.io/
  * https://www.gnu.org/software/global/
* Install
  * [vim-gutentags](https://github.com/ludovicchabant/vim-gutentags#how)
  * [gutentags_plus](https://github.com/skywind3000/gutentags_plus#installation)
### Jenkinsfile-vim-syntax
* https://github.com/martinda/Jenkinsfile-vim-syntax
### fugitive
### jedi-vim
* https://github.com/davidhalter/jedi-vim.git
### nvim-yarp
* https://github.com/roxma/nvim-yarp.git
### tagbar
### vim-bazel
* https://github.com/davidzchen/vim-bazel.git
### vim-go
* https://github.com/fatih/vim-go.git
### vim-hug-neovim-rpc
* https://github.com/roxma/vim-hug-neovim-rpc.git
### vim-pug
* https://github.com/digitaltoad/vim-pug.git
### vim-webostv-dev
### vim-node
* https://github.com/moll/vim-node.git
