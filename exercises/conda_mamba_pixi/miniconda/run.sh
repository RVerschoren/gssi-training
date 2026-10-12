prefix=${BASEDIR}/miniconda
export PATH=${prefix}/bin:${PATH}
source $(conda info --base)/etc/profile.d/conda.sh
conda activate myfirstenv
python $1
conda deactivate
