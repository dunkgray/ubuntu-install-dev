# I changed;
# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
# to
# PS1="${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$"
# on the EC2 instance, so I cna tell local and aws apart.

echo "# ubuntu-install-dev mod_bash changes start " >> ~/.bashrc

# Likely broken
# tee -a ~/.bashrc <<'END'

# # Change aws accounts and clusters
# ap(){
# export AWS_PROFILE=$1
# aws eks update-kubeconfig --name $1
# }
# END

echo "conda activate dea " >> ~/.bashrc
echo "echo 'conda deactivate dea  # activate'" >> ~/.bashrc


echo "# ubuntu-install-dev mod_bash changes finish " >> ~/.bashrc
