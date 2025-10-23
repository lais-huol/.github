PROJECT_ROOTDIR=~/projetos/LAIS/dados
WORKSPACE_ROOTDIR=~/projetos/LAIS/dados/dados_workspace

# Baixe o projeto na pasta de exemplo (se for outra, basta que altere os scripts)
mkdir -p $PROJECT_ROOTDIR
git clone ssh://git@git.lais.huol.ufrn.br:2222/AVAS/avasus/dados/dados_workspace.git $WORKSPACE_ROOTDIR
cd $WORKSPACE_ROOTDIR

./dados setup

if [[ "$SHELL" == '/bin/bash' ]]; then;
    source ~/.bashrc
fi

if [[ "$SHELL" == '/bin/zsh' ]]; then
    source ~/.zshrc
fi
