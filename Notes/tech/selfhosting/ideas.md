# Ideas

 - TODO Treafik Wildcard Zertifikat konfigurieren
    Ultimate docker home server with traefik smarthomebeginner blogpost

 - TODO Web analytics Plausible.io
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

 - TODO Web IRC Client the-lounge
 - TODO IT Hardware Management Snap-IT