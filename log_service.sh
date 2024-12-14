TARGET_LOG="/var/log/custom_service.log"

update_log(){
tail -n 10 /var/log/alternatives.log > "$TARGET_LOG"
echo "Arquivos atualizado com as ultimas 10 linhas de /var/log/alternativa.log."
}

clear(){
> "$TARGET_LOG"
echo "conteudo do arquivo $TARGET_lOG foi excluido."
}

status_log(){
update_log
echo "conteudo atual de $TARGET_LOG:"
cat "$TARGET_LOG"
}

case "$1" in
start)
update_log
;;
stop)
clear
;;
status)
status_log
;;
*)
echo "uso : $0{start|stop|status}"
echo "start - atualiza o arquivo de log."
echo "stop - exclui o conteudo do arquivo de log."
echo "status - atualiza e exibe o conteudo do arquivo de log."
exit 1
;;
esac
