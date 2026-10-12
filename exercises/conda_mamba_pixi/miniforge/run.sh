module load Miniforge3/25.3.0-3
source $(conda info --base)/etc/profile.d/conda.sh
conda activate myfirstenv
python $1
conda deactivate
