trap 'echo -e "\n\033[33m\$ ${BASH_COMMAND}\n\033[0m"' DEBUG
prefix=${BASEDIR}/miniconda
export PATH=${prefix}/bin:${PATH}
source $(conda info --base)/etc/profile.d/conda.sh
conda activate myfirstenv
python $1
conda deactivate
