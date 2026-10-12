trap 'echo -e "\n\033[33m\$ ${BASH_COMMAND}\n\033[0m"' DEBUG
prefix=${BASEDIR}/micromamba
eval "$(${prefix}/bin/micromamba shell hook -s posix)"
micromamba activate myfirstenv
python $1
micromamba deactivate
