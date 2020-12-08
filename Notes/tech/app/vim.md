[#](#) VIM/NEOVIM 💓

Some useful keybindings and many more for my favorite editor.

### Vim and shell
Run command from vim

    :!{cmd}

Read output form command

    :r !{cmd}

insert output on line 3:

    :3read !curl --silent ifconfig.me

write as input to command

    :[range]write !{cmd}
    :'<,'>write !python

Source: [vim and the shell](https://vimways.org/2019/vim-and-the-shell/)

## Splits
Splits are very useful i.e. in vimdiff. So here some keybindings.  
Source: [thoughbot.com](https://thoughtbot.com/blog/vim-splits-move-faster-and-more-naturally)  
Help: `:help splits` & `:help CRTL-W`

### More natural splits opening
Open new split panes to right and bottom, which feels more natural than Vim’s default:

    set splitbelow
    set splitright

### Resizing splits 
Vim’s defaults are useful for changing split shapes:

    "Max out the height of the current split
    ctrl + w _

    "Max out the width of the current split
    ctrl + w |

    "Normalize all split sizes, which is very handy when resizing terminal
    ctrl + w =

### More split manipulation
    "Swap top/bottom or left/right split
    Ctrl+W R

    "Break out current window into a new tabview
    Ctrl+W T

    "Close every window in the current tabview but the current one
    Ctrl+W o
