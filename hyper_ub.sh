# sudo ./hyper_ub.sh to run this 
# Follow
# https://docs.dev.dea.ga.gov.au/getting_started/hyper-v.html
# to install TurboVNC

# Download the latest .deb from the TurboVNC Downloads Page.
# 2.2.4 didn't work for me
# https://sourceforge.net/projects/turbovnc/files/
# https://sourceforge.net/projects/turbovnc/files/2.2.3/
# turbovnc_2.2.3_amd64.deb
# wget https://sourceforge.net/projects/turbovnc/files/2.2.3/turbovnc_2.2.3_amd64.deb
# sudo dpkg -i turbovnc*.deb


cp /etc/sysconfig/tvncservers /etc/sysconfig/tvncservers.bkup
tee /etc/sysconfig/tvncservers <<'END'
VNCSERVERS="1:osboxes"
END
update-rc.d tvncserver defaults
systemctl start tvncserver
systemctl status tvncserver

