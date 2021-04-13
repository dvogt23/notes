[#](#) Misc

### Some interesting dotfiles:
 * https://github.com/webgefrickel/dotfiles #mutt
 * https://github.com:frank604/scripts.git
 * https://github.com/Northcode/dotfiles.git
 * https://github.com:rcr/dotfiles.git
 * https://github.com/ReekyMarko/dotfiles
 * [ishchow - lua](https://github.com/ishchow/dotfiles/blob/master/.config/nvim/lua/diary.lua)

### Create QR-Code for your wifi
[Source](https://feeding.cloud.geek.nz/posts/encoding-wifi-access-point-passwords-qr-code/)
`qrencode -o wifi.png "WIFI:T:WPA;S:<SSID>;P:<PASSWORD>;;"`

### Firefox connect localsubdomain
Go to `about:config` and search for `network.dns.localDomains` and add the entries (comma separated)

### Security book
A most recommended it security book: [Book](https://www.cl.cam.ac.uk/~rja14/book.html)

### Linux hardening book
How to harden alinux system guide:
[Book](https://madaidans-insecurities.github.io/guides/linux-hardening.html)

### Custom sortation of database entries
Found an good article about, how handle the custom sortation of entires in sql database. TL;DR just add an column `pos` to the table and auto-increment this value. If insert an entry between of some rows, just calculate the new position for this entry like: ((pos n-1 + pos n+1) / 2

**i.e.:**

| names | pos |
| peter | 1   |
| tom   | 2   |
| harry | 2.5 |
| ben   | 3   |

[begirffs.com - User defined order](https://begriffs.com/posts/2018-03-20-user-defined-order.html)
