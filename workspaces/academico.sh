PROJECT_ROOTDIR=~/projetos/LAIS/academico
WORKSPACE_ROOTDIR=~/projetos/LAIS/academico/academico_workspace

# Baixe o projeto na pasta de exemplo (se for outra, basta que altere os scripts)
mkdir -p $PROJECT_ROOTDIR
git clone ssh://git@git.lais.huol.ufrn.br:2222/AVAS/avasus/academico.git $WORKSPACE_ROOTDIR
cd $WORKSPACE_ROOTDIR


./academico setup


if [[ "$SHELL" == '/bin/bash' ]]; then
    source ~/.bashrc
fi

if [[ "$SHELL" == '/bin/zsh' ]]; then
    source ~/.zshrc
fi
