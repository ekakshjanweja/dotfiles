-- Extra autostart processes.
o.exec_on_start("pgrep -x hypridle >/dev/null || uwsm-app -- hypridle")
