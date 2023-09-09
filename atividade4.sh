#!/bin/bash

# Diretório alvo
DIR="/var/log"
find "$DIR" -name "*.log" -mtime +7 -exec rm -f {} \;
echo "Arquivos .log com mais de 7 dias de atividade foram removidos de $DIR."

# Dê permissão de execução ao script com o comando: chmod +x atividade4.sh
# Execute o script com privilégios root: sudo ./atividade4.sh.


# Meu teste:
# (base) gaellopes@Gaellopes:~/Documentos/GolangTests$ ./atividade4.sh
# rm: não foi possível remover '/var/log/bootstrap.log': Permissão negada
# find: ‘/var/log/speech-dispatcher’: Permissão negada
# rm: não foi possível remover '/var/log/auth.log': Permissão negada
# find: ‘/var/log/private’: Permissão negada
# rm: não foi possível remover '/var/log/gufw.log': Permissão negada
# find: ‘/var/log/gdm3’: Permissão negada
# rm: não foi possível remover '/var/log/netext73/logi/instalacja_20230729_210740.log': Permissão negada
# rm: não foi possível remover '/var/log/netext73/logi/instalujsh_20230729_210740.log': Permissão negada
# rm: não foi possível remover '/var/log/installer/casper.log': Permissão negada
# rm: não foi possível remover '/var/log/fontconfig.log': Permissão negada
# rm: não foi possível remover '/var/log/unattended-upgrades/unattended-upgrades-shutdown.log': Permissão negada
# Arquivos .log com mais de 7 dias de atividade foram removidos de /var/log.
# (base) gaellopes@Gaellopes:~/Documentos/GolangTests$ sudo  ./atividade4.sh
# [sudo] senha para gaellopes: 
# Arquivos .log com mais de 7 dias de atividade foram removidos de /var/log.
# (base) gaellopes@Gaellopes:~/Documentos/GolangTests$ 