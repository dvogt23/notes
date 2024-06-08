# Ideas

- Great article about self-hosting architecture [cprimozic](https://cprimozic.net/blog/my-selfhosted-websites-architecture/)
  - modern nginx features with different modules
  - phost for quick static site self-hosting
  - sentry for logging
  - httpbin for api testing
  - send for private file sharing
  - munin for monitoring
  - google cloud archive coldline for backup
- TODO Note taking [wiz.cn](https://www.wiz.cn)
- TODO todo management [vikunja](https://vikunja.io/docs/)
- TODO host an own music streaming [navidrome](https://www.navidrome.org/docs/installation/docker/)
- TODO Host my own signal proxy
  [Help iran to connect signal](https://signal.org/blog/help-iran-reconnect/)
- TODO SMTP backup Mailcatcher
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
- TODO Web IRC Client [the-lounge](https://github.com/thelounge/thelounge)
- TODO IT Hardware Management Snap-IT
- TODO Media Server [JellyFin](https://jellyfin.org)