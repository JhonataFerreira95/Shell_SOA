# Coleta de dados com o MariaDB

## Sobre o Script
Este script realiza a inserção de dados no banco de dados MariaDB/MySQL. Ele captura o nome do usuário e a data/hora atuais e insere essas informações em uma tabela chamada `userdata`.

## Funcionalidade
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

## Pré-requisitos
- MariaDB ou MySQL instalado.
- Usuário com permissões para criar bancos de dados e tabelas.
- Acesso ao terminal (Linux/macOS) ou prompt de comando (Windows com WSL).

## Como Usar
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

## Observações
- Certifique-se de ter as permissões corretas no banco de dados.
- Modifique os valores das variáveis caso queira personalizar o banco de dados e a tabela.

## Autor
Este script foi criado para fins de aprendizado e automação de inserção de dados em bancos de dados relacionais.

