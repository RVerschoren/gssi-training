trap 'echo -e "\n\033[33m\$ ${BASH_COMMAND}\n\033[0m"' DEBUG
module load Miniforge3/25.3.0-3
source $(conda info --base)/etc/profile.d/conda.sh
cat ~/.condarc
conda info
conda create -n myfirstenv -y
conda activate myfirstenv
conda env list
conda search tblite-python
conda install tblite-python==0.4.0 -y
tblite --version
which tblite
ldd $(which tblite)
which python
python -c 'from tblite.library import get_version; print(get_version())'
conda deactivate
