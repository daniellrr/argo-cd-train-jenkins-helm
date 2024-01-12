#!/bin/bash

# Specify the Bitnami Helm chart repository URL
BITNAMI_REPO="https://github.com/bitnami/charts.git"

# Specify your Git repository URL
YOUR_REPO="git@github.com:daniellrr/argo-cd-train-jenkins-helm.git"

# Specify the Helm chart name
HELM_CHART_NAME="jenkins"

# Clone the Bitnami Helm chart repository
#git clone $BITNAMI_REPO

# Navigate to the specific chart directory
#cd charts/bitnami/$HELM_CHART_NAME

# Initialize a new Git repository
git init

# Add your Git repository as a remote
git remote add origin $YOUR_REPO
git remote set-url origin git@github.com:daniellrr/argo-cd-train-jenkins-helm.git

# Commit the existing files
git add .
git commit -m "Initial commit"

# Push the code to your remote repository
git push -u origin master

# Provide some guidance to the user
echo "Bitnami Jenkins Helm chart cloned into your repository: $YOUR_REPO"
echo "You can now make any necessary modifications or additions to the chart."

