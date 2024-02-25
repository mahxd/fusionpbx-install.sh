FROM debian:12.5
COPY . /usr/src/fusionpbx-install.sh/debian
RUN /usr/src/fusionpbx-install.sh/debian/pre-install.sh
RUN /usr/src/fusionpbx-install.sh/debian/install.sh

# RUN /usr/src/fusionpbx-install.sh/debian/resources/sngrep.sh
# RUN /usr/src/fusionpbx-install.sh/debian/resources/fusionpbx.sh
# RUN /usr/src/fusionpbx-install.sh/debian/resources/php.sh
# RUN /usr/src/fusionpbx-install.sh/debian/resources/nginx.sh
# RUN /usr/src/fusionpbx-install.sh/debian/resources/switch.sh
# RUN /usr/src/fusionpbx-install.sh/debian/resources/fail2ban.sh
# RUN /usr/src/fusionpbx-install.sh/debian/resources/postgresql.sh

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD /usr/bin/supervisord -n

VOLUME ["/etc/freeswitch", "/etc/fusionpbx", "/var/lib/freeswitch", "/usr/share/freeswitch", "/var/www/fusionpbx", "/etc/php/8.1"]

## Ports
# Open the container up to the world.
### 8021 fs_cli, 5060 5061 5080 5081 sip and sips, 64535-65535 rtp
EXPOSE 8021/tcp
EXPOSE 5060/tcp 5060/udp 5080/tcp 5080/udp
EXPOSE 5061/tcp 5061/udp 5081/tcp 5081/udp
EXPOSE 7443/tcp
EXPOSE 5070/udp 5070/tcp
EXPOSE 64535-65535/udp
EXPOSE 16384-32768/udp