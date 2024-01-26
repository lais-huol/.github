PROJECT_ROOTDIR=~/projetos/LAIS/avasus

# Baixe o projeto na pasta de exemplo (se for outra, basta que altere os scripts)
mkdir -p $PROJECT_ROOTDIR
git clone ssh://git@git.lais.huol.ufrn.br:2222/AVAS/avasus/avasus_workspace.git $PROJECT_ROOTDIR/avasus_workspace
cd $PROJECT_ROOTDIR/avasus_workspace


# Configura o teu /etc/hosts para atender por http://sabia http://login.sabia http://painel.sabia e http://desenvolvedores.sabia
# Se estiver executando isso em um WSL se lembre de fazer as configurações também no Windows
./avasus setup


if [[ "$SHELL" == '/bin/bash' ]]; then
    source ~/.bashrc
fi

if [[ "$SHELL" == '/bin/zsh' ]]; then
    source ~/.zshrc
fi
