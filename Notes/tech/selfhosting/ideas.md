# Ideas

- Great article about self-hosting architecture [cprimozic](https://cprimozic.net/blog/my-selfhosted-websites-architecture/)
  - modern nginx features with different modules
  - phost for quick static site self-hosting
  - sentry for logging
  - httpbin for api testing
  - plane.so for project processing
  - nocodb for database with no-code
  - docmost - document/knowledge management
  - send for private file sharing
  - munin for monitoring
  - google cloud archive coldline for backup
- [ ] Note taking [wiz.cn](https://www.wiz.cn)
- [ ] todo management [vikunja](https://vikunja.io/docs/)
- [ ] host an own music streaming [navidrome](https://www.navidrome.org/docs/installation/docker/)
- [ ] Host my own signal proxy
  [Help iran to connect signal](https://signal.org/blog/help-iran-reconnect/)
- [ ] SMTP backup Mailcatcher
  Postfix relay config:

  Edit the Postfix configuration to specify the desired relaying. Where example.com is your domain, in /etc/postfix/main.cf, set:

  ```
      relay_domains = example.com
      relayhost = primary-mx.example.com
      inet_interfaces = all
      local_recipient_maps =
      mynetworks =
  ```

  Launch Postfix. sudo /etc/init.d/postfix start
- [ ] Web IRC Client [the-lounge](https://github.com/thelounge/thelounge)
- [ ] IT Hardware Management Snap-IT
- [ ] Media Server [JellyFin](https://jellyfin.org)