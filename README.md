# Script de Gerenciamento de Logs - README


Este script é projetado para gerenciar logs no sistema, especificamente manipulando o arquivo `/var/log/custom_service.log`. Ele oferece funcionalidades para atualizar, limpar e exibir o conteúdo dos logs de maneira simples.

## Descrição
O script permite:
1. **Atualizar** o arquivo de log com as últimas 10 linhas do `/var/log/alternatives.log`.
2. **Limpar** o conteúdo do arquivo de log.
3. **Exibir** o conteúdo atualizado do log.

## Uso
O script aceita três argumentos principais:

### **1. Start**
Atualiza o arquivo de log com as últimas 10 linhas do arquivo `/var/log/alternatives.log`.

**Comando:**
```bash
./log_service.sh start
```

**Saída:**
```
Arquivos atualizado com as ultimas 10 linhas de /var/log/alternatives.log.
```

### **2. Stop**
Limpa todo o conteúdo do arquivo de log.

**Comando:**
```bash
./log_service.sh stop
```

**Saída:**
```
conteudo do arquivo /var/log/custom_service.log foi excluido.
```

### **3. Status**
Atualiza o arquivo de log e exibe seu conteúdo atual.

**Comando:**
```bash
./log_service.sh status
```

**Saída:**
```
Arquivos atualizado com as ultimas 10 linhas de /var/log/alternatives.log.
conteudo atual de /var/log/custom_service.log:
<conteudo_do_log>
```

### **Ajuda**
Para qualquer uso indevido ou argumento inválido, o script exibe a seguinte mensagem:
```bash
uso : ./log_service.sh {start|stop|status}
start - atualiza o arquivo de log.
stop - exclui o conteudo do arquivo de log.
status - atualiza e exibe o conteudo do arquivo de log.
```

## Pré-requisitos
- Sistema operacional **Linux**.
- Permissões adequadas para acessar e modificar arquivos em `/var/log/`.

## Estrutura do Código
- **Variável TARGET_LOG**: Define o caminho do arquivo de log customizado: `/var/log/custom_service.log`.
- **Função update_log()**: Copia as últimas 10 linhas de `/var/log/alternatives.log` para o arquivo alvo.
- **Função clear()**: Limpa o conteúdo do arquivo de log.
- **Função status_log()**: Atualiza o arquivo de log e exibe seu conteúdo atual.
- **Bloco CASE**: Gerencia os argumentos fornecidos ao script (`start`, `stop` ou `status`).

## Permissões
Certifique-se de que o script tem permissão de execução:
```bash
chmod +x log_service.sh
```

## Execução
Execute o script utilizando a seguinte sintaxe:
```bash
./log_service.sh {start|stop|status}
```

## Exemplo de Execução
```bash
./log_service.sh start
./log_service.sh status
./log_service.sh stop
```

## Autor
- **Jhonata Santana Ferreira**
- Contato: [jhonataovirowa@gamil.com]

---

**Versão**: 1.0  
**Data**: 14/12/2024
