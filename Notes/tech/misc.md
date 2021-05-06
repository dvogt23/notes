# Misc

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

[begriffs.com - User defined order](https://begriffs.com/posts/2018-03-20-user-defined-order.html)

### OWASP 10 most critical security issues for web applications

Some notes of: [OWASP Top 10 - heise](https://www.heise.de/news/Online-Workshop-OWASP-Top-10-Sicherheitsluecken-in-Webanwendungen-vermeiden-5988383.html) from Tobias Glemser

*Content:*

 - Einführung in relevante Organisationen
 - Beispiele in der öffentlichen Wahrnehmung
 - Die zehn häufigsten Sicherheitsrisiken bei Webanwendungen – OWASP Top 10 (u. a. SQLInjection, Cross-Site-Scripting, CSRF, Denial-of-Service)
 - Interaktive Demonstrationen zu allen Risiken
 - Aufzeigen der Auswirkungen
 - Passende Beispiele mit realem Bezug
 - Vorstellung von Prüfwerkzeugen und Methoden bei der Prüfung in Form von Penetrationstests

*Notes:*

 - XSS bei eBay -> Haftung? Gesetzt sagt: Stand der Technik einhalten!
 - OWASP SAMM/Cheat Sheet anschauen
 - Pentest sicher/unsicher? Keine eindeutige Aussage, da Momentaufnahme!
 - Security Beauftragter muss Fragen stellen um die Kommunikation anzuregen
   - Entwickler tragen keine Verantwortung, wenn Sicherheitsaspekte nicht berücksichtigt werden
 - Masche aus Maßnahmen zur Bekämpfung von Risiken schmählern die Gefahr
 - Verarbeitung von Kreditkartendaten gesetzl. jährl. Pentest
 - Angriffe: [OWASP-BWA](https://hub.docker.com/r/vulnerables/web-dvwa) - Test machine
   - Injection
