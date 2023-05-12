# Split keyboard

For my first try, I build a ferris sweep with Kailh Low Profile Choc Switches, Blank MBK Choc Low Profile Keycaps and two Elite-Pi controllers from splitkb.com.

Some more details about my walkthrough this journey and its actual state:

**Draft**
qmk compile -kb ferris/sweep -km dvogt23 -e CONVERT_TO=elite_pi
make CONVERT_TO=kb2040 ferris/sweep:default:uf2-split-left
make CONVERT_TO=kb2040 ferris/sweep:default:uf2-split-right
https://docs.qmk.fm/#/getting_started_build_tools
https://config.qmk.fm/#/ferris/sweep/LAYOUT_split_3x5_2
https://ryan.himmelwright.net/post/qmk-flashing-ferris-sweep/
https://caksoylar.github.io/keymap-drawer
keybr.com(https://www.keybr.com)
https://monkeytype.com/

![[images/IMG_0254.jpeg]]