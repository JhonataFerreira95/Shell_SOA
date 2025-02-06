# AMD de usuários

## Sobre o Script

Este script realiza a inserção de dados no banco de dados MariaDB/MySQL. Ele captura o nome do usuário e a data/hora atuais e insere essas informações em uma tabela chamada `userdata`. Além disso, há um segundo script que cria usuários e os adiciona a grupos no sistema operacional com base em um arquivo CSV.

## Funcionalidade

### Script de Banco de Dados
1. Define variáveis essenciais:
   - `DB_NAME`: Nome do banco de dados.
   - `TABLE_NAME`: Nome da tabela.
   - `USERNAME`: Nome do usuário atual do sistema.
   - `DATETIME`: Data e hora atuais no formato `YYYY-MM-DD HH:MM:SS`.
2. Exibe a data e hora atuais para fins de depuração.
3. Verifica se a variável `DATETIME` está vazia.
4. Executa o comando SQL para inserir os dados na tabela `userdata`.
5. Cria o banco de dados `mysql_db`, caso não exista.
6. Cria a tabela `userdata`, caso não exista.
7. Insere alguns registros de exemplo na tabela `userdata`.

### Script de Criação de Usuários
1. Define variáveis essenciais:
   - `USUARIOS`: Nome do arquivo CSV contendo os nomes e senhas.
   - `GRUPOS`: Lista de grupos a serem criados.
   - `HOME_BASE`: Diretório base para os usuários.
   - `SHELL_PADRAO`: Shell padrão para os usuários.
2. Cria os grupos definidos, caso não existam.
3. Lê o arquivo CSV e cria usuários, distribuindo-os nos grupos.
4. Configura a senha do usuário.

## Pré-requisitos

- MariaDB ou MySQL instalado.
- Usuário com permissões para criar bancos de dados e tabelas.
- Acesso ao terminal (Linux/macOS) ou prompt de comando (Windows com WSL).
- Arquivo `usuarios.csv` contendo nomes e senhas no formato `nome,senha`.

## Como Usar

### Executando o Script de Banco de Dados
1. Certifique-se de que o MariaDB/MySQL está rodando.
2. Execute o script no terminal:
   ```bash
   chmod +x script.sh  # Torna o script executável
   ./script.sh         # Executa o script
   ```
3. Verifique se os dados foram inseridos corretamente:
   ```sql
   SELECT * FROM userdata;
   ```

### Executando o Script de Criação de Usuários
1. Certifique-se de que o arquivo `usuarios.csv` está corretamente formatado.
2. Execute o script no terminal:
   ```bash
   chmod +x criar_usuarios.sh  # Torna o script executável
   ./criar_usuarios.sh         # Executa o script
   ```
3. Verifique se os usuários foram criados corretamente com:
   ```bash
   cat /etc/passwd | grep nome_do_usuario
   ```

## Observações

- Certifique-se de ter as permissões corretas no banco de dados.
- Modifique os valores das variáveis caso queira personalizar o banco de dados, a tabela ou os grupos de usuários.

## Autor

Este script foi criado para fins de aprendizado e automação de inserção de dados em bancos de dados relacionais e gerenciamento de usuários no sistema operacional.

