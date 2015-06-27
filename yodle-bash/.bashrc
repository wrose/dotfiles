export PATH=/workspace/env:/workspace/bin:/workspace/tools:/usr/local/bin:$PATH
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_TLS_VERIFY=1
export DOCKER_CERT_PATH=/Users/william.rose/.boot2docker/certs/boot2docker-vm

if [ -f /etc/bash_completion ]; then source /etc/bash_completion; fi
export AD_USERNAME=william.rose
yodle_dev_include_hg_prompt=1
source $HOME/.yodle-dev-shell-utils/conf/sh/all
export GRADLE_OPTS="-Dfile.encoding=UTF-8"
alias readlink="greadlink"
alias l="ls -lhAG $ARGV"

removeFromPath ()
{
    export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}
setjdk ()
{
    if [ $# -ne 0 ]; then
        removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin';
        if [ -n "${JAVA_HOME+x}" ]; then
            removeFromPath $JAVA_HOME;
        fi;
        export JAVA_HOME=`/usr/libexec/java_home -v 1.$@`;
        export PATH=$JAVA_HOME/bin:$PATH;
    fi
}
alias ju="setjdk $ARGV"

alias mech='echo /workspace/src/mechanic-configuration'
alias pullmech='git --git-dir `mech`/.git --work-tree `mech` pull'
alias roles_dev='echo "\n==================== DEV HOSTS ====================" && cat `mech`/development/roles.yaml'
alias roles_qa1='echo "\n==================== QA1 HOSTS ====================" && cat `mech`/qa1/roles.yaml'
alias roles_qa2='echo "\n==================== QA2 HOSTS ====================" && cat `mech`/qa2/roles.yaml'
alias roles_qa3='echo "\n==================== QA3 HOSTS ====================" && cat `mech`/qa3/roles.yaml'
alias roles_prod='echo "\n==================== PROD HOSTS ====================" && cat `mech`/production/roles.yaml'
alias roles='pullmech && roles_dev && roles_qa1 && roles_qa2 && roles_qa3 && roles_prod'
