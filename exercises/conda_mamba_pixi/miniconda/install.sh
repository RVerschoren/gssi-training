trap 'echo -e "\n\033[33m\$ ${BASH_COMMAND}\n\033[0m"' DEBUG
prefix=${BASEDIR}/miniconda
url=https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
wget --no-clobber -P ${BASEDIR} ${url}
bash ${BASEDIR}/Miniconda3-latest-Linux-x86_64.sh -b -p ${prefix}
rm ${prefix}/.condarc
export PATH=${prefix}/bin:${PATH}
source $(conda info --base)/etc/profile.d/conda.sh
conda config --show channels
conda create -n myfirstenv tblite-python=0.4.0 -y
conda activate myfirstenv
conda env list
tblite --version
python -c 'from tblite.library import get_version; print(get_version())'
conda deactivate
