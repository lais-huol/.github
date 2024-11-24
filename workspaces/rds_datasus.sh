PROJECT_ROOTDIR=~/projetos/LAIS/rds_datasus
WORKSPACE_ROOTDIR=~/projetos/LAIS/rds_datasus/rds_datasus_workspace

# Baixe o projeto na pasta de exemplo (se for outra, basta que altere os scripts)
mkdir -p $PROJECT_ROOTDIR
git clone ssh://git@git.lais.huol.ufrn.br:2222/rds/rds-datasus-service.git $WORKSPACE_ROOTDIR
cd $WORKSPACE_ROOTDIR


./rds_datasus setup


if [[ "$SHELL" == '/bin/bash' ]]; then
    source ~/.bashrc
fi

if [[ "$SHELL" == '/bin/zsh' ]]; then
    source ~/.zshrc
fi
