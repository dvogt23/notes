# Security

Interest things for security in general:

**Articles:**
 - Minimum viable secure product [mvsp](https://mvsp.dev/)

### Yubikey

Best practice guide: https://github.com/drduh/YubiKey-Guide

Secure password: 
```
LC_ALL=C tr -dc 'A-Z1-9' < /dev/urandom | \
  tr -d "1IOS5U" | fold -w 30 | sed "-es/./ /"{1..26..5} | \
  cut -c2- | tr " " "-" | head -1
```