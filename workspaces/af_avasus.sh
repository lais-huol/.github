PROJECT_ROOTDIR=~/projetos/LAIS/af_avasus

# Baixe o projeto na pasta de exemplo (se for outra, basta que altere os scripts)
mkdir -p $PROJECT_ROOTDIR
git clone ssh://git@git.lais.huol.ufrn.br:2222/AVAS/avasus/dados/airflow_avasus.git $PROJECT_ROOTDIR/af_avasus
cd $PROJECT_ROOTDIR/af_avasus


./af_avasus setup


if [[ "$SHELL" == '/bin/bash' ]]; then
    source ~/.bashrc
fi

if [[ "$SHELL" == '/bin/zsh' ]]; then
    source ~/.zshrc
fi
