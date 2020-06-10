alias cat=bat
alias d=docker
alias d2u="find . -type f -print0 | xargs -0 dos2unix"
alias dc="docker-compose"
alias gcd="git checkout development"
alias k=kubectl
alias kl=kubectl logs --tail=1000 --all-containers -f
alias kns="kubectl config set-context --current --namespace"
alias kz=kustomize
alias ls="exa -la"
alias mergemaster="gcd && gl && gcm && gl && git merge development --no-edit"
alias pullall="fd -H ^\.git$ -x sh -c \"cd '{//}' && git pull --all && git remote prune origin\""
alias pushall="fd -H ^\.git$ -x sh -c \"cd '{//}' && git push\""
alias setproxy="export http_proxy=http://localhost:8080 && export https_proxy=http://localhost:8080 && export HTTP_PROXY=http://localhost:8080 && export HTTPS_PROXY=http://localhost:8080"
alias unsetproxy="export http_proxy= && export https_proxy= && export HTTP_PROXY= && export HTTPS_PROXY="