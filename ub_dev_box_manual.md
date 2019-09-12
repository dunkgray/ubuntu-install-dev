 # ubuntu based

 Don't -X in, this hasn't been set up
 Before running this script
 sudo apt-get update
 sudo apt-get install git -y
 ssh-keygen -t rsa -b 4096 -C "duncan.gray@ga.gov.au"
 more ~/.ssh/id_rsa.pub
 git clone git@github.com:dunkgray/ubuntu-install-dev.git
 emacs -nw # no windows emacs

# Setting up psql
evernote> Overall AWS DEA Dev Box>passwords

# Setting up kubes
 following;
 Digital Earth Africa - Infrastructure Runbook (in https://docs.google.com/document t&d account)
 export AWS_PROFILE=africa-eks
 aws eks --region us-west-2 update-kubeconfig --name deafrica-eks

# Setting up Docker
$docker login

# To prevent ssh broken pipe
in /etc/ssh/sshd_config of the server machine
Host *
ServerAliveInterval 120