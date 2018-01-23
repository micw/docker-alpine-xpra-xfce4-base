FROM micwy/docker-alpine-xpra-base

USER root

RUN apk add --no-cache --update \
      xfce4 faenza-icon-theme \
      xfce4-whiskermenu-plugin xfce4-whiskermenu-plugin-lang \
      xfce4-appfinder xfce4-appfinder-lang \
      xfce4-panel xfce4-panel-lang \
      xfce4-session xfce4-session-lang \
      xfdesktop xfdesktop-lang \
      xfce4-mixer xfce4-mixer-lang \
      xfce4-notifyd xfce4-notifyd-lang \
      xfce4-settings xfce4-settings-lang \
      xfce4-taskmanager xfce4-taskmanager-lang \
      xfce4-terminal xfce4-terminal-lang \
      dbus py-dbus

VOLUME /home/user

ADD entrypoint.sh /entrypoint.sh
RUN chmod 0744 /entrypoint.sh

CMD ["/entrypoint.sh"]
