PROJECT_ROOTDIR=~/projetos/LAIS/sabia2

# Baixe o projeto na pasta de exemplo (se for outra, basta que altere os scripts)
mkdir -p $PROJECT_ROOTDIR
git clone ssh://git@git.lais.huol.ufrn.br:2222/id-sus/sabia2/sabia2_workspace.git $PROJECT_ROOTDIR/sabia2_workspace
cd $PROJECT_ROOTDIR/sabia2_workspace

# Configura o teu /etc/hosts para atender por http://sabia http://login.sabia http://painel.sabia e http://desenvolvedores.sabia
# Se estiver executando isso em um WSL se lembre de fazer as configurações também no Windows
./sabia2 setup


if [[ "$SHELL" == '/bin/bash' ]]; then
    source ~/.bashrc
fi

if [[ "$SHELL" == '/bin/zsh' ]]; then
    source ~/.zshrc
fi
