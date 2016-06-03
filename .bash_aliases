alias ap='ansible-playbook -u ansible -i ../../commcare-hq/deployment/commcare-hq-deploy/fab/inventory/$ENV -e "@../config/$ENV/$ENV.yml" --ask-sudo-pass'
alias aps='ansible-playbook -u ansible -i ../../commcare-hq/deployment/commcare-hq-deploy/fab/inventory/$ENV deploy_stack.yml -e "@../config/$ENV/$ENV.yml" --ask-sudo-pass'

function ansible-deploy-control() {
  ANSIBLE_CONTROL_USER=`whoami` && sudo /home/$ANSIBLE_CONTROL_USER/.virtualenvs/ansible/bin/ansible-playbook -u root -i inventories/localhost deploy_control.yml -e @../config/$ENV/$ENV.yml --diff
}


. virtualenvwrapper.sh

function ansible-control-banner() {
    GREEN='\033[0;32m'
    BLUE='\033[0;34m'
    NC='\033[0m' # No Color
    printf "\n${GREEN}Welcome to Ansible Control\n\n"
    printf "${GREEN}Available commands:\n"
    printf "${BLUE}update_code${NC} - update the ansible repositories (safely)\n"
    printf "${BLUE}workon ansible${NC} - activate the ansible virtual env\n"
    printf "${BLUE}ap${NC} - shortcut for ansible-playbook -u ansible -i ../../commcare-hq/fab/inventory/\$ENV -e \"@../config/\$ENV/\$ENV.yml\" --ask-sudo-pass\n"
    printf "${BLUE}aps${NC} - same as ap deploy_stack.yml\n"
    printf "${BLUE}ansible-deploy-control${NC} - deploy changes to users on this control machine\n"
}

ansible-control-banner  
workon ansible
cd ~/ansible/commcarehq-ansible/ansible
