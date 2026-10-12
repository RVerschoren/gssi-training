trap 'echo -e "\n\033[33m\$ ${BASH_COMMAND}\n\033[0m"' DEBUG
prefix=${BASEDIR}/pixi
curl -fsSL https://pixi.sh/install.sh | PIXI_NO_PATH_UPDATE=y PIXI_HOME=${prefix} sh
export PATH=${prefix}/bin:${PATH}
pixi init ${prefix}/pixi_envs/myfirstenv
cd ${prefix}/pixi_envs/myfirstenv
# Choosing 0.7.0 as 0.4.0 will not work due to shared library versioning issues
pixi add tblite-python==0.7.0
pixi list
cat pixi.toml
pixi run tblite --version
pixi run python -c 'from tblite.library import get_version; print(get_version())'
cd -
