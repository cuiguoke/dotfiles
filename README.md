Here are my personal dotfiles.

## vim configuration

```bash
.
├── coc.vim
├── fern.vim
├── vimrc
└── ycm.vim
```

Placing these 4 vim configuration files in directory `~/.vim/` directly.

If there was a file named `~/.vimrc` already, then appending the following line in `~/.vimrc`:

```vim
" load configuration from ~/.vim/vimrc
source ~/.vim/vimrc
```

> NOTE: For a new develop environment, the `~/.vimrc` isn't necessary.

