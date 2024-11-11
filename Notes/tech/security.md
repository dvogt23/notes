---
id: security
aliases: []
tags: []
---
# Security

Interest things for security in general:

**Articles:**
 - Minimum viable secure product [mvsp](https://mvsp.dev/)
 - Secure your VPS [basic#Secure your VPS](linux/basic.md#secure-your-vps)

## Yubikey

Best practice guide: https://github.com/drduh/YubiKey-Guide
Another great guide: https://yubikey.jms1.info

> [!Warning]
> There is a vulnerability about yubi keys:
> - [a-trust](https://www.a-trust.at/de/%C3%BCber_uns/newsbereich/20240905_de_post.html)
> - [ninjalab.io](https://ninjalab.io/wp-content/uploads/2024/09/20240903_eucleak.pdf)
> - [yubico](https://www.yubico.com/support/security-advisories/ysa-2024-03/)

- [ ] [Securing Git with SSH and FIDO security keys](https://developers.yubico.com/SSH/Securing_git_with_SSH_and_FIDO2.html)

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

## Security quote

> Security is a team sport, and accelerating SFI isn’t just job number one for our security teams – it’s everyone’s top priority and our customers’ greatest need.
> If you’re faced with the tradeoff between security and another priority, your answer is clear: Do security. In some cases, this will mean prioritizing security above other things we do, such as releasing new features or providing ongoing support for legacy systems. This is key to advancing both our platform quality and capability such that we can protect the digital estates of our customers and build a safer world for all. - Satya

Source: [Microsoft(😆) Blog](https://blogs.microsoft.com/blog/2024/05/03/prioritizing-security-above-all-else/)
## Passwords

### Rotation

> [!WARNING]
> A security policy to rotate passwords is a security finding in audits as NIST and BSI classified it.

**NIST SP 800-63 Digital Identity Guidelines**

3. Authenticator and Verifier Requirements
	3.1.1.2 Password Verifiers
	1. [...]
	6. 1. Verifiers and CSPs **SHALL NOT** require users to change passwords periodically. However, verifiers **SHALL** force a change if there is evidence of compromise of the authenticator.
	
Source: [nist](https://pages.nist.gov/800-63-4/sp800-63b/authenticators/#password)

**ORP.4 Identitäts- und Berechtigungsmanagement**

4. ORP.4.A23 Regelung für passwortverarbeitende Anwendungen und ITSysteme (B) [IT-Betrieb] 
	IT-Systeme oder Anwendungen SOLLTEN NUR mit einem validen Grund zum Wechsel des Passworts auffordern.
	
Source: [BSI](https://www.bsi.bund.de/SharedDocs/Downloads/DE/BSI/Grundschutz/IT-GS-Kompendium_Einzel_PDFs_2023/02_ORP_Organisation_und_Personal/ORP_4_Identitaets_und_Berechtigungsmanagement_Editon_2023.pdf?__blob=publicationFile&v=3)