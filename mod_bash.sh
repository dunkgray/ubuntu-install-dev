echo "# ubuntu-install-dev mod_bash changes start " >> ~/.bashrc

tee -a ~/.bashrc <<'END'

# Change aws accounts and clusters
ap(){
export AWS_PROFILE= $1
aws eks update-kubeconfig --name $1
}
END

echo "conda activate dea " >> ~/.bashrc
echo "echo 'conda deactivate dea  # activate'" >> ~/.bashrc


echo "# ubuntu-install-dev mod_bash changes finish " >> ~/.bashrc
