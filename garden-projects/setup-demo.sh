#bash
alias k=kubectl

source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
gcloud auth login
export AWS_REGION=us-east-1
