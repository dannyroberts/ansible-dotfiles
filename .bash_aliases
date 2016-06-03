alias ap='ansible-playbook -u ansible -i ../../commcare-hq/deployment/commcare-hq-deploy/fab/inventory/$ENV -e "@../config/$ENV/$ENV.yml" --ask-sudo-pass'
alias aps='ansible-playbook -u ansible -i ../../commcare-hq/deployment/commcare-hq-deploy/fab/inventory/$ENV deploy_stack.yml -e "@../config/$ENV/$ENV.yml" --ask-sudo-pass'

. virtualenvwrapper.sh

function ansible-control-banner() {
    GREEN='\033[0;32m'
    BLUE='\033[0;34m'
    NC='\033[0m' # No Color
    printf "\n${GREEN}Welcome to Ansible Control\n\n"
    printf "${GREEN}Available commands:\n"
    printf "${BLUE}update_code${NC} - update the ansible repositories (safely)\n"
    printf "${BLUE}workon ansible${NC} - activate the ansible virtual env\n"
    printf "${BLUE}ap${NC} - useful alias for ansible-playbook -u ansible -i ../../commcare-hq/fab/inventory/\$ENV -e \"@../config/\$ENV/\$ENV.yml\" --ask-sudo-pass\n"
}

ansible-control-banner  
workon ansible
cd ~/ansible/commcarehq-ansible/ansible
