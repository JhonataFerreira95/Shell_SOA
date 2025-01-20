# Arquivo CSV com os nomes e senhas
USUARIOS="usuarios.csv"

# Grupos que serão criados
GRUPOS=("grupo1" "grupo2" "grupo3" "grupo4")

# Diretório home base para os usuários
HOME_BASE="/home"

# Shell padrão para os usuários
SHELL_PADRAO="/bin/bash"

# Criar os grupos
echo "Criando grupos..."
for GRUPO in "${GRUPOS[@]}"; do
    if ! getent group "$GRUPO" > /dev/null; then
        groupadd "$GRUPO"
        echo "Grupo $GRUPO criado."
    else
        echo "Grupo $GRUPO já existe."
    fi
done