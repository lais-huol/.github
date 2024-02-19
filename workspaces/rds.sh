PROJECT_ROOTDIR=~/projetos/LAIS/rds

# Baixe o projeto na pasta de exemplo (se for outra, basta que altere os scripts)
mkdir -p $PROJECT_ROOTDIR
git clone ssh://git@git.lais.huol.ufrn.br:2222/rds/rds_workspace.git $PROJECT_ROOTDIR/rds_workspace
cd $PROJECT_ROOTDIR/rds_workspace


# Configura o teu /etc/hosts para atender por http://sabia http://login.sabia http://painel.sabia e http://desenvolvedores.sabia
# Se estiver executando isso em um WSL se lembre de fazer as configurações também no Windows
./rds setup

echo 'Lembre-se de carregar o ambiente'
echo 'if [[ "$SHELL" == '/bin/bash' ]]; then source ~/.bashrc ; fi'
echo 'if [[ "$SHELL" == '/bin/zsh' ]]; then source ~/.zshrc ; fi'
