1. [Hotkeys](#hotkeys)
   1. [Editing mappings](#editing-mappings)
      1. [Move a line of text using ALT+[jk] or Command+[jk] on mac](#move-a-line-of-text-using-altjk-or-commandjk-on-mac)
      2. [Search commands](#search-commands)
   2. [Moving around, tabs, windows and buffers](#moving-around-tabs-windows-and-buffers)
   3. [Other](#other)
2. [Requirements](#requirements)

## Hotkeys
```
<F3>                    Display line numbers
<F12>                   Switch background to light/dark
```

### Editing mappings
#### Move a line of text using ALT+[jk] or Command+[jk] on mac
```
<M-j>                   Move down
<M-k>                   Move up
```

#### Search commands
```
<space>                 Search forward for {pattern}
<c-space>               Search backward for {pattern}
<leader> <cr>           Disable highlight when is pressed (:noh)
```

### Moving around, tabs, windows and buffers
```
<leader> ba             Close all the buffersleader
<leader> bd             Close the current buffer
<leader> h              Go to previous buffer in buffer list.(:bprevious)
<leader> l              Go to next buffer in buffer list.(:bnext)

<leader> tc             Close current tab page.(:tabclose)
<leader> te             Super useful when editing files in the same directory :tabedit <c-r>=expand("%:p:h")<cr>
<leader> tl             Let 'tl' toggle between this and the last accessed tab
<leader> tm             Move the current tab page to after tab page N.  Use zero to make the current tab page the first one.(:tabmove)
<leader> tn             Open a new tab page with an empty window, after the current tab page. (:tabnew)
<leader> to             Close all other tab pages.(:tabonly)

<leader> cd             Switch CWD to the directory of the open buffer

<C-w>j                  Switching to below window 
<C-w>k                  Switching to above window
<C-w>l                  Switching to right window 
<C-w>h                  Switching to left window

```

### Other
```
<leader> nb             :NERDTreeFromBookmark
<leader> nf             :NERDTreeFind
<leader> nn             If a NERDTree already exists for this tab, it is reopened and rendered again.  If no NERDTree exists for this tab then this command acts the same as the |:NERDTree| command. (:NERDTreeToggle)
```

## Requirements  
- [DroidSansMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono.otf)