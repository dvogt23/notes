# Misc

### Some interesting dotfiles:

- https://github.com/webgefrickel/dotfiles #mutt
- https://github.com:frank604/scripts.git
- https://github.com/Northcode/dotfiles.git
- https://github.com:rcr/dotfiles.git
- https://github.com/ReekyMarko/dotfiles
- [ishchow - lua](https://github.com/ishchow/dotfiles/blob/master/.config/nvim/lua/diary.lua)

### Cool stuff

- ASCII paint [asciiflow](https://asciiflow.com)
- Privacy sexy [privacy.sexy](https://privacy.sexy/)
- Youtube (ad-free) [piped](https://github.com/TeamPiped/Piped)
- AirDrop [snapdrop](https://snapdrop.net/)
- Slide/Prasentation [sli.dev](https://sli.dev/)
- Multi device for geeks [flipper zero](https://flipperzero.one/)
- regex prime check `^.?$|^(..+?)\1+$` [explain](https://illya.sh/the-codeumentary-blog/regular-expression-check-if-number-is-prime/)

### Trackers
- series & films: [serializd](https://www.serializd.com/) / [letterboxd](https://letterboxd.com/)
- books: [oku](https://oku.club/) / [goodreads](https://www.goodreads.com/)

### Nix

Articles
- Nix quickstart [zero-to-nix](https://zero-to-nix.com/start)
- [Tidy up your home with nix](https://juliu.is/tidying-your-home-with-nix/)
- [Github actions with nix](https://determinate.systems/posts/nix-github-actions)

### Emacs

Articles
- [Best howto](https://www2.lib.uchicago.edu/keith/emacs/#org92ca48f)

### Docker

#### Show ip addresses of running containers:

```bash
docker ps -q | xargs -n 1 docker inspect --format '{{ .NetworkSettings.Networks.frontend.IPAddress }} {{ .Name }}' | sed 's/ \// /'
```

### Raspberry Pi

Show the model in shell `cat /sys/firmware/devicetree/base/model`

### Kubernetes

Some security [guidelines for kubernetes (OWASP)](https://sysdig.com/blog/top-owasp-kubernetes/)

### SSH

#### Articles

 - [Port forwarding (advanced)](https://iximiuz.com/en/posts/ssh-tunnels/)

For sharing a local dev server for public, great service from [localhost.run](https://localhost.run):

```bash
ssh -R 80:localhost:3000 localhost.run
```

### YAML get full path

```bash
cat myfile.yml | yq e '.. | select(. == "*") | {(path | join(".")): .} '
```

### Replace passwords in `gz` logile

```bash
gzip -cd rails.log.gz | sed -re 's/(\"password\"=>)(\"(.*)\",)/\1\"[FILTERed]",/g' | sed -re 's/(\"password_confirmation\"=>)(\"(.*)\")/\1\"[FILTERed]"/g' | gzip > rails.tmp
```

### Link text on a website

Use this syntax to link to specific text:
```
https://example.com/page.html#:~:text=[prefix-,]textStart[,textEnd][,-suffix]
```
i.e. [this](https://developer.mozilla.org/en-US/docs/Web/URI/Fragment/Text_fragments#:~:text=without%20relying%20on%20the%20presence%20of%20IDs)
```
# highlight
https://developer.mozilla.org/en-US/docs/Web/URI/Fragment/Text_fragments#:~:text=without%20relying%20on%20the%20presence%20of%20IDs

# multiple texts
https://developer.mozilla.org/en-US/docs/Web/URI/Fragment/Text_fragments#:~:text=using%20particular&text=it%20allows

# fragments
https://developer.mozilla.org/en-US/docs/Web/URI/Fragment/Text_fragments#:~:text=using%20particular,don't%20control
```
Source: [alfy.blog](https://alfy.blog/2024/10/19/linking-directly-to-web-page-content.html)
### Ed cheatsheet

Navigating

    Line number: go to that line and print it.
    pn - Print current line and line number.
    3kxe - mark line 3 as "xe".
    'xep - print the line marked as xe.

Editing

    a - start editing after the current line.
    i - start editing before the current line.
    c - replace the current line.
    end the editing with only a period on a line (.).
    1d - delete line 1.
    1,2j - join line one and two.

Printing

    1,$p - print entire buffer.
        ,p - also prints the entire buffer.
    2,3p - print lines 2 and 3.
    .,4p - print from the current line (.) to line 4.
    -1,+1p - print 1 line above and 1 line below the current line.

Buffer operations

    2t4 - Copy line 2 to after line 4.
    2t$ - Copy line 2 to the end of the file.
    3m6 - Move line 3 to after line 6.
    2,4m$ - Move lines 2 to 4 to the end of the file.

Searching / replace

    /like - Move to the next line after the current one matching regular expression /like.
    ?Like - Search backwards.
    1s/re/jo - Substitute only the first occurence of re with jo on line 1.
    1s/re/jo/g - Substitute all occurences of re with jo on line 1.
    1,$s/re/jo/g - Substitute all occurences of re with jo in the whole buffer.

Regular expresions

    g/re/p - print all the lines matching regular expression /re/.
    v/re/p - print all the lines NOT matching regular expression /re/.
    g/re/m$ - move all the lines matching regular expression /re/ to the end of the file.

Reading and writing

    w file.txt - Save the current buffer as filename file.txt.
    w - Save the current buffer if the file is already saved.
    w1,4 - Save lines 1 to 4 to the current buffer.
    W - append to a file (not replace).
    r /etc/hosts - Insert the contents of /etc/hosts after the current line.
    r !ps -e - Insert the output of the command "ps -e" after the current line.
    e file.txt - Open the file file.txt and replace the current buffer.

[Source: raymii.org](https://raymii.org/s/tutorials/ed_cheatsheet.html)

### Generate qrcode in terminal

`qrencode -m 2 -t utf8 < file.conf`

### MacOS Brew install older version

- You create a local “tap” - which I assume is something like a local brew
  repository
- You extract the desired version of the package into this local tap
- You install your local tap

```bash
# use $USER variable to mimick userName/repoName structure
# this does not actually create any git repositories
# 1. create a new tap
brew tap-new $USER/local-<packageName>
# 2. extract into local tap
brew extract --version=1.2.3 <packageName> $USER/local-<packageName>
# 3. run brew install@version as usual
brew install <packageName>@1.2.3
```

If not found:

```bash
# list all local taps
brew tap

# go to tap and check out correct hash
cd /usr/local/Homebrew/Library/Taps/<packageName>
git checkout <hash>
# prevent brew from checking out different hash
HOMEBREW_NO_AUTO_UPDATE=1 brew install <packageName>

# can list and switch between all versions
brew list --versions
brew switch <packageName> <version>
```

### `target="_blank"` vulnerability

Add always `rel="noopener noreferrer"` to `target="_blank"` links, because of:

* [stackoverflow](https://stackoverflow.com/questions/50709625/link-with-target-blank-and-rel-noopener-noreferrer-still-vulnerable)
* [jitbit](https://www.jitbit.com/alexblog/256-targetblank---the-most-underestimated-vulnerability-ever/)

### MacOS

Shutdown without confirmation from terminal:

`osascript -e 'tell app "System Events" to shut down'`

Source: [Stackexchange](https://apple.stackexchange.com/a/103633)

### Wireguard

Setup wireguard with good explanations: [What They Don’t Tell You About Setting Up A WireGuard VPN](https://medium.com/tangram-visions/what-they-dont-tell-you-about-setting-up-a-wireguard-vpn-46f7bd168478)

```
# Generate keys in /etc/wireguard
cd /etc/wireguard
wg genkey | tee privatekey | wg pubkey > publickey
```

```
# /etc/wireguard/wg0.conf on the server
[Interface]
Address = 10.0.0.1/24
ListenPort = 51820
# Use your own private key, from /etc/wireguard/privatekey
PrivateKey = WCzcoJZaxurBVM/wO1ogMZgg5O5W12ON94p38ci+zG4=

[Peer]
# VPN client's public key
PublicKey = lIINA9aXWqLzbkApDsg3cpQ3m4LnPS0OXogSasNW5RY=
# VPN client's IP address in the VPN
AllowedIPs = 10.0.0.8/32
```

Relaying traffic

```
# /etc/sysctl.conf

net.ipv4.ip_forward=1

# Then apply the settings by running:
sysctl -p
```

Client config:

```
# /etc/wireguard/wg0.conf on the client
[Interface]
# The address your computer will use on the VPN
Address = 10.0.0.8/32# Load your privatekey from file
PostUp = wg set %i private-key /etc/wireguard/privatekey
# Also ping the vpn server to ensure the tunnel is initialized
PostUp = ping -c1 10.0.0.1[Peer]
# VPN server's wireguard public key (USE YOURS!)
PublicKey = CcZHeaO08z55/x3FXdsSGmOQvZG32SvHlrwHnsWlGTs=# Public IP address of your VPN server (USE YOURS!)
# Use the floating IP address if you created one for your VPN server
Endpoint = 123.123.123.123:51820# 10.0.0.0/24 is the VPN subnet
AllowedIPs = 10.0.0.0/24# To also accept and send traffic to a VPC subnet at 10.110.0.0/20
# AllowedIPs = 10.0.0.0/24,10.110.0.0/20# To accept traffic from and send traffic to any IP address through the VPN
# AllowedIPs = 0.0.0.0/0# To keep a connection open from the server to this client
# (Use if you're behind a NAT, e.g. on a home network, and
# want peers to be able to connect to you.)
# PersistentKeepalive = 25
```

### NGINX config

Some nginx features for developers.

Redirect a domain to localhost dev server:

```
user nginx;
worker_processes auto;

events {}

http {
    access_log  /var/log/nginx/access.log combined;

    # include /etc/nginx/conf.d/*.conf;

    upstream backend {
        server backend.local:10000;
    }

    server {
        server_name proxy.local;
        listen 8000;

        location / {
            proxy_pass http://backend;
        }
    }
}
```

Source: [Nice nginx features for developers](https://alex.dzyoba.com/blog/nginx-features-for-developers/)

**Compressed response**

Using with `curl -H 'Accept-encoding: gzip' localhost:8080/ping | gunzip -` or `curl --compressed https://ashishb.net`.

Allow `Accept-encoding: gzip` with config:
```
http { 
	... 
	server { 
		... 
		gzip on; 
		gzip_min_length 1000; 
		... 
	} 
}
```
Source: [ashishb.net](https://ashishb.net/all/always-support-compressed-response-in-an-api-service/)
### FLoC blocking

Block FLoC within traefik:

```
# traefik.toml

[http.middlewares]
  [http.middlewares.floc.headers]
    [http.middlewares.floc.headers.customResponseHeaders]
        Permissions-Policy = "interest-cohort=()"

```

Source: [Paramdeo Singh - Opting your Website out of Google's FLoC Network](https://paramdeo.com//blog/opting-your-website-out-of-googles-floc-network)

### Create QR-Code for your wifi

[Source](https://feeding.cloud.geek.nz/posts/encoding-wifi-access-point-passwords-qr-code/) `qrencode -o wifi.png "WIFI:T:WPA;S:<SSID>;P:<PASSWORD>;;"`

### Security book

A most recommended it security book: [Book](https://www.cl.cam.ac.uk/\~rja14/book.html)

### Linux hardening book

How to harden alinux system guide: [Book](https://madaidans-insecurities.github.io/guides/linux-hardening.html)

### Custom sortation of database entries

Found an good article about, how handle the custom sortation of entires in sql database. TL;DR just add an column `pos` to the table and auto-increment this value. If insert an entry between of some rows, just calculate the new position for this entry like: ((pos n-1 + pos n+1) / 2

**i.e.:**

| names | pos | | peter | 1 | | tom | 2 | | harry | 2.5 | | ben | 3 |

[begriffs.com - User defined order](https://begriffs.com/posts/2018-03-20-user-defined-order.html)

### OWASP 10 most critical security issues for web applications

Some notes of: [OWASP Top 10 - heise](https://www.heise.de/news/Online-Workshop-OWASP-Top-10-Sicherheitsluecken-in-Webanwendungen-vermeiden-5988383.html) from [Tobias Glemser](https://owasp.org/www-project-juice-shop/)
Authentication: [OWASP Authentication Cheat sheet](https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html)

**Content:**

* Einführung in relevante Organisationen
* Beispiele in der öffentlichen Wahrnehmung
* Die zehn häufigsten Sicherheitsrisiken bei Webanwendungen – OWASP Top 10 (u. a. SQLInjection, Cross-Site-Scripting, CSRF, Denial-of-Service)
* Interaktive Demonstrationen zu allen Risiken
* Aufzeigen der Auswirkungen
* Passende Beispiele mit realem Bezug
* Vorstellung von Prüfwerkzeugen und Methoden bei der Prüfung in Form von Penetrationstests

**Notes:**

* XSS bei eBay -> Haftung? Gesetzt sagt: Stand der Technik einhalten!
* OWASP SAMM/Cheat Sheet anschauen
* Pentest sicher/unsicher? Keine eindeutige Aussage, da Momentaufnahme!
* Security Beauftragter muss Fragen stellen um die Kommunikation anzuregen
  * Entwickler tragen keine Verantwortung, wenn Sicherheitsaspekte nicht berücksichtigt werden
* Masche aus Maßnahmen zur Bekämpfung von Risiken schmählern die Gefahr
* Verarbeitung von Kreditkartendaten gesetzl. jährl. Pentest
* OWASP Ressourcen: [Web security testing guide](https://owasp.org/www-project-web-security-testing-guide/), [OWASP-BWA](https://hub.docker.com/r/vulnerables/web-dvwa) - Test machine, [ZAP](https://www.zaproxy.org/docs/docker/baseline-scan/), [Juice-Shop](https://owasp.org/www-project-juice-shop/)
* Angriffe:
  * Injection
    * SQL, LDAP, OS-commands -> backend
    * XSS -> frontend
    * sqlmap / `Mc O'Caml` test
  * Broken Authentication
    * sessionId in GET
    * nur sessionId als Authorisierung
    * login brute-force verhindern
  * Sesitive data sxposure
    * backup files im www dir
    * keine durchgängige Verschlüsslung
  * XML External Entities (XXE)
    * SOAP API
  * Broken access control
    * Zugriff auf Dateien `?page=/etc/passwd`
    * per ID auf Daten dritter zugreifen
  * Security misconfiguration
    * Härtung der Infrastruktur
    * update von 3rd party libs
    * default accounts beachten
  * XSS Cross-site-scriting
    * js injection auf website
  * Insecure deserialization
    * parser libs updaten!
  * Insufficient logging & monitoring
    * fehlerhafte login Versuche
    * Transaktionen protokollieren

**Eingabe im frontend & backend! validieren vor API Aufruf!**

**Trivia:**

* Geheime Botschaften by Simon Singh (Buch)
* Mr. Robot (Serie)
* Hackers (Film)
* Iron Sky (Film)
````
