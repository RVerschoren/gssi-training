trap 'echo -e "\n\033[33m\$ ${BASH_COMMAND}\n\033[0m"' DEBUG
module load Miniforge3/25.3.0-3
source $(conda info --base)/etc/profile.d/conda.sh
conda activate myfirstenv
python $1
conda deactivate
