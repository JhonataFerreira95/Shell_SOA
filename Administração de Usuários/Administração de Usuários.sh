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

# Contador para alocar usuários nos grupos
COUNTER=0

# Ler o arquivo CSV e criar usuários
echo "Criando usuários..."
while IFS=',' read -r NOME SENHA; do
    # Pular cabeçalho, se existir
    if [ "$NOME" == "nome" ]; then
        continue
    fi

    # Determinar o grupo com base no contador
    GRUPO_INDEX=$((COUNTER / 10))
    GRUPO=${GRUPOS[GRUPO_INDEX]}

    # Criar o usuário
    if ! id "$NOME" > /dev/null 2>&1; then
        useradd -m -d "$HOME_BASE/$NOME" -G "$GRUPO" -s "$SHELL_PADRAO" "$NOME"
        echo "$NOME:$SENHA" | chpasswd
        echo "Usuário $NOME criado e adicionado ao grupo $GRUPO."
    else
        echo "Usuário $NOME já existe."
    fi

    # Incrementar o contador
    COUNTER=$((COUNTER + 1))
done < "$USUARIOS"

echo "Processo concluído."