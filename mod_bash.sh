tee -a ~/.bashrc <<'END'
# Change aws accounts and clusters
ap(){
export AWS_PROFILE= $1
aws eks update-kubeconfig --name $1
}
END
