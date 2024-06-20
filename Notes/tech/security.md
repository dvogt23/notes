# Security

Interest things for security in general:

**Articles:**
 - Minimum viable secure product [mvsp](https://mvsp.dev/)

## Yubikey

Best practice guide: https://github.com/drduh/YubiKey-Guide
Another great guide: https://yubikey.jms1.info

Secure password: 
```
LC_ALL=C tr -dc 'A-Z1-9' < /dev/urandom | \
  tr -d "1IOS5U" | fold -w 30 | sed "-es/./ /"{1..26..5} | \
  cut -c2- | tr " " "-" | head -1
```

### Configuration notes

- **Not** do `keytocard` of your primary cipher key, this should stay save on your backup media.
 - **Always!!!** backup your `$GNUPGHOME` before doing `keytocard` - not saving on quit will drop your keys anyways.
 - **Lint** (hopenpgp-tools) your pgp key with: `gpg --export <KEYID> | hokey lint`
 
**Error at adding key to agent:**
```bash
⋅⋅➤ ssh-add id_ed25519
Enter passphrase for id_ed25519:
Could not add identity "id_ed25519": agent refused operation
```
Check path for `pinentry-program  /opt/homebrew/bin/pinentry-mac` in `~/.gnupg/gpg-agent.conf`

**Quick commands**
```bash
gpg --batch --generate-key gen-params-ed25519
gpg --quick-add-key $KEYID ed25519 sign 1y
gpg --quick-add-key $KEYID ed25519 auth 1y
gpg --quick-add-key $KEYID cv25519 encrypt 1y
```