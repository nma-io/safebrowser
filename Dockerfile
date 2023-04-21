FROM kasmweb/firefox:1.13.0-rolling

COPY vnc_startup.sh /dockerstartup/vnc_startup.sh

ENV VNC_PW=safe
ENV VNC_USER=firefox

USER root
RUN chown root:root /dockerstartup/vnc_startup.sh
RUN chmod +x /dockerstartup/vnc_startup.sh

USER kasm-user

COPY places.sqlite /home/kasm-default-profile/.mozilla/firefox/kasm/places.sqlite

EXPOSE 6901
WORKDIR /home/kasm-user
ENTRYPOINT ["/bin/bash", "-c", "/dockerstartup/kasm_default_profile.sh && /dockerstartup/vnc_startup.sh && /dockerstartup/kasm_startup.sh"]