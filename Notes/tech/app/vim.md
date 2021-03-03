[#](#) VIM/NEOVIM 💓

Some useful keybindings and many more for my favorite editor.

### Macro

If you record a macro with `qa` and forget something, just with `qA` you could append some keystrokes to your macro.

Source: [A vim guide for advanced user](https://thevaluable.dev/vim-advanced/)

### Registers

To put a register in insert mode, just do `CTRL+R <register>`

Source: [A vim guide for advanced user](https://thevaluable.dev/vim-advanced/)

### Global command

To delete lines with a pattern:

```vim
" delete line
:g/useless/d

" make line lowercase
:g/useless/norm gu$
````

Source: [A vim guide for advanced user](https://thevaluable.dev/vim-advanced/)

### Completion

In insert mode:

    ctrl+x ctrl+f     complete filenames
    ctrl+x ctrl+l     complete lines
    ctrl+r <register> insert text from register (i.e.: . for last text [ctrl+a])

### Visual mode

Selects the previous visual

    gv

Go to other end of visual block

    v_o/v_0

Increment numbers

    CTRL-A    inc by one
    g CTRL-A  inc by sequence
    2g CTRL-A inc two by sequence

Blockwise motion

    d2j         delete 2 lines
    d<CRL-V>2j  delete 2 chars in that column

## Ex commands

Run command for regex

    :g/regex/ex

Run comman in norm mode

    :g/regex/norm f dw

Source:
[hillelwayne/intermediate-vim](https://www.hillelwayne.com/post/intermediate-vim/)

### Commands in insert mode

    Ctrl-h - delete back one character (just like Backspace)
    Ctrl-w - delete back one word
    Ctrl-u - delete back to the start of line or the start of current insert
    
Talking about Insert mode - did you know that you can paste yanked text without moving to Normal mode? 
You can do that with 

    Ctrl-r 0

Source: [Jovica - Mastering Vim Quickly #127]

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
