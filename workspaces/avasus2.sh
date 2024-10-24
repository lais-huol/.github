PROJECT_ROOTDIR=~/projetos/LAIS/avasus2
WORKSPACE_ROOTDIR=~/projetos/LAIS/avasus2/avasus2_workspace

# Baixe o projeto na pasta de exemplo (se for outra, basta que altere os scripts)
mkdir -p $PROJECT_ROOTDIR
git clone ssh://git@git.lais.huol.ufrn.br:2222/AVAS/avasus/avasus2/avasus2_workspace.git $WORKSPACE_ROOTDIR
cd $WORKSPACE_ROOTDIR


./avasus2 setup


if [[ "$SHELL" == '/bin/bash' ]]; then
    source ~/.bashrc
fi

if [[ "$SHELL" == '/bin/zsh' ]]; then
    source ~/.zshrc
fi
