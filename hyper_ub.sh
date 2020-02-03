tee ~/etc/sysconfig/tvncservers <<'END'
VNCSERVERS="1:<myusername-here>"
END
update-rc.d tvncserver defaults
systemctl start tvncserver
systemctl status tvncserve

