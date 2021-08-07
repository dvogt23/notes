# Misc

### Some interesting dotfiles:
 * https://github.com/webgefrickel/dotfiles #mutt
 * https://github.com:frank604/scripts.git
 * https://github.com/Northcode/dotfiles.git
 * https://github.com:rcr/dotfiles.git
 * https://github.com/ReekyMarko/dotfiles
 * [ishchow - lua](https://github.com/ishchow/dotfiles/blob/master/.config/nvim/lua/diary.lua)

### Cool stuff

 - ASCII paint [asciiflow](https://asciiflow.com)
 - Privacy sexy [privacy.sexy](https://privacy.sexy/)
 - Youtube (ad-free) [piped](https://github.com/TeamPiped/Piped)

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

Some notes of: [OWASP Top 10 - heise](https://www.heise.de/news/Online-Workshop-OWASP-Top-10-Sicherheitsluecken-in-Webanwendungen-vermeiden-5988383.html) from [Tobias Glemser](https://owasp.org/www-project-juice-shop/)

**Content:**

 - Einführung in relevante Organisationen
 - Beispiele in der öffentlichen Wahrnehmung
 - Die zehn häufigsten Sicherheitsrisiken bei Webanwendungen – OWASP Top 10 (u. a. SQLInjection, Cross-Site-Scripting, CSRF, Denial-of-Service)
 - Interaktive Demonstrationen zu allen Risiken
 - Aufzeigen der Auswirkungen
 - Passende Beispiele mit realem Bezug
 - Vorstellung von Prüfwerkzeugen und Methoden bei der Prüfung in Form von Penetrationstests

**Notes:**

 - XSS bei eBay -> Haftung? Gesetzt sagt: Stand der Technik einhalten!
 - OWASP SAMM/Cheat Sheet anschauen
 - Pentest sicher/unsicher? Keine eindeutige Aussage, da Momentaufnahme!
 - Security Beauftragter muss Fragen stellen um die Kommunikation anzuregen
   - Entwickler tragen keine Verantwortung, wenn Sicherheitsaspekte nicht berücksichtigt werden
 - Masche aus Maßnahmen zur Bekämpfung von Risiken schmählern die Gefahr
 - Verarbeitung von Kreditkartendaten gesetzl. jährl. Pentest
 - OWASP Ressourcen: [Web security testing guide](https://owasp.org/www-project-web-security-testing-guide/), [OWASP-BWA](https://hub.docker.com/r/vulnerables/web-dvwa) - Test machine, [ZAP](https://www.zaproxy.org/docs/docker/baseline-scan/), [Juice-Shop](https://owasp.org/www-project-juice-shop/) 
 - Angriffe: 
   - Injection
     - SQL, LDAP, OS-commands -> backend
     - XSS -> frontend
     - sqlmap / `Mc O'Caml` test
   - Broken Authentication
     - sessionId in GET
     - nur sessionId als Authorisierung
     - login brute-force verhindern
   - Sesitive data sxposure
     - backup files im www dir
     - keine durchgängige Verschlüsslung
   - XML External Entities (XXE)
     - SOAP API
   - Broken access control
     - Zugriff auf Dateien `?page=/etc/passwd`
     - per ID auf Daten dritter zugreifen
   - Security misconfiguration
     - Härtung der Infrastruktur
     - update von 3rd party libs
     - default accounts beachten
   - XSS Cross-site-scriting
     - js injection auf website
   - Insecure deserialization
     - parser libs updaten!
   - Insufficient logging & monitoring
     - fehlerhafte login Versuche
     - Transaktionen protokollieren

**Eingabe im frontend & backend! validieren vor API Aufruf!**

**Trivia:**

 - Geheime Botschaften by Simon Singh (Buch)
 - Mr. Robot (Serie)
 - Hackers (Film)
 - Iron Sky (Film)
