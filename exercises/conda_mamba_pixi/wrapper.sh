export BASEDIR="${GSSI_BASEDIR:-$VSC_DATA}/conda"
echo "Using ${BASEDIR} as base directory"
rm -rf ${BASEDIR}
mkdir -p ${BASEDIR}

rm -rf ~/.conda
tmpfile=$(mktemp)
suffix=.bak
condarc=~/.condarc
cat <<-EOF > ${tmpfile}
channels:
  - conda-forge
envs_dirs:
  - ${BASEDIR}/conda_envs
pkgs_dirs:
  - ${BASEDIR}/conda_pkgs
env_prompt: '({name}) '
EOF
mv ${tmpfile} ${condarc} --backup --suffix=${suffix}

directory=$1

if [ ! -d "${directory}" ]; then
  echo "An existing directory has to be provided as first argument"
fi

# Print each line in color and then execute it
echo -e "\nLaunching ${directory}/install.sh"
bash ${directory}/install.sh

echo -e "\nLaunching ${directory}/run.sh"
bash ${directory}/run.sh ../demoscripts/tblite-single-point-GFN2-xTB.py

mv ${condarc}${suffix} ${condarc}
