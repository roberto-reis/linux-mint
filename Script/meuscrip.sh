#!/bin/bash

#Variáveis
USUARIO=$(whoami) #Qual o usuário logado
DIRETORIO="$HOME/Downloads" #Guarda o diretório
PROGRAMAS="gdebi papirus-icon-theme speedtest-cli xsensors conky conky-all curl lm-sensors hddtemp gparted filezilla audacity inkscape bleachbit qbittorrent clementine dropbox sublime-text htop"
LOG="$DIRETORIO/log-script" # Variável do caminho do Log do Script

#Variáveis Downloads
DOW_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
DOW_VIRTUALBOX="https://download.virtualbox.org/virtualbox/6.0.4/virtualbox-6.0_6.0.4-128413~Ubuntu~bionic_amd64.deb"
DOW_TEAMVIEWER="https://download.teamviewer.com/download/linux/teamviewer_amd64.deb"
DOW_VSCODE="https://az764295.vo.msecnd.net/stable/1b8e8302e405050205e69b59abb3559592bb9e60/code_1.31.1-1549938243_amd64.deb"
DOW_XAMPP="https://ufpr.dl.sourceforge.net/project/xampp/XAMPP%20Linux/7.3.2/xampp-linux-x64-7.3.2-0-installer.run"

#Variveis Programas
CHROME="google-chrome*"
VIRTUALBOX="virtualbox*"
TEAMVIEWER="teamviewer*"
VSCODE="code*"
XAMPP="xampp*"
#
#
#
#Atualizar o sistema
echo
	echo -e "             Atualizando as listas do Apt, aguarde..."
	echo -e "------------------------------------------------------------------------"
		apt-get update
	echo -e "---------> Listas atualizadas com sucesso!!!, continuando com o script..."
	sleep 5
echo
	echo -e "             Atualizando o sistema, aguarde..."
	echo -e "------------------------------------------------------------------------"
		apt-get -y upgrade
		apt-get -y dist-upgrade
	echo -e "---------> Sistema atualizado com sucesso!!!, continuando com o script..."
		sleep 5
echo
echo
#
#Instalação de pacotes necessários
	echo -e "             Instalando os Programas necessários, aguarde..."
		apt-get -y install $PROGRAMAS
	echo -e "---------> Programas instalados com sucesso!!!, continuando com o script..."
		sleep 5
echo
echo
#
#Removendo os software desnecessários
	echo -e "             Removendo os software desnecessários, aguarde..."
	echo -e "------------------------------------------------------------------------"
		apt-get -y autoremove
	echo -e "---------> Software removidos com Sucesso!!!, continuando com o script..."
		sleep 5
echo
echo
#
#Baixando e instalando o google chrome
	echo -e "        Baixando o google chrome no site oficial, aguarde..."
	echo -e "------------------------------------------------------------------------"
		wget $DOW_CHROME
	echo -e "---------> Google chrome baixado com sucesso!!!, continuando com o script..."
		sleep 5
echo
echo
	echo -e "             Instalado o google chrome, aguarde..."
		gdebi $CHROME
	echo -e "---------> Google chrome instalado com sucesso."
		sleep 5
echo
echo
#
#Baixando e instalando o virtualbox
	echo -e "           Baixando o virtualbox no site oficial, aguarde..."
	echo -e "------------------------------------------------------------------------"
		wget $DOW_VIRTUALBOX
	echo -e "---------> Virtualbox baixado com sucesso!!!, continuando com o script..."
		sleep 5
echo
	echo -e "             Instalado o virtualbox, aguarde..."
		gdebi $VIRTUALBOX
	echo -e "---------> Virtualbox instalado com sucesso."
		sleep 5
echo
echo
#
#Baixando e instalando o teamviwer
	echo -e "          Baixando o teamviwer no site oficial, aguarde..."
	echo -e "------------------------------------------------------------------------"
		wget $DOW_TEAMVIEWER
	echo -e "---------> Teamviwer baixado com sucesso!!!, continuando com o script..."
		sleep 5
echo
	echo -e "             Instalado o teamviwer, aguarde..."
	echo -e "------------------------------------------------------------------------"
		gdebi $TEAMVIEWER
	echo -e "---------> Teamviwer instalado com sucesso."
		sleep 5
echo
echo
#
#Baixando e instalando o VS code
	echo -e "           Baixando o VS code no site oficial, aguarde..."
	echo -e "------------------------------------------------------------------------"
		wget $DOW_VSCODE
	echo -e "---------> VS code baixado com sucesso!!!, continuando com o script..."
		sleep 5
echo
echo
	echo -e "             Instalado o VS code, aguarde..."
	echo -e "------------------------------------------------------------------------"
		gdebi $VSCODE
	echo -e "---------> VS code instalado com sucesso."
		sleep 5
echo
echo
#
#Baixando e instalando o Xampp
	echo -e "          Baixando o Xampp no site oficial, aguarde..."
	echo -e "------------------------------------------------------------------------"
		wget $DOW_XAMPP
	echo -e "---------> Xampp baixado com sucesso!!!, continuando com o script..."
		sleep 5
echo
echo
	echo -e "             Dando permissão de execução ao xampp, aguarde..."
	echo -e "------------------------------------------------------------------------"
		chmod +x $XAMPP
	echo -e "---------> Permissão concedida com sucesso."
		sleep 5
echo
echo
	echo -e "             Executando xampp para para continuar a instalação, aguarde..."
	echo -e "------------------------------------------------------------------------"
		./$XAMPP
	echo -e "---------> Xampp instalado com sucesso."
		sleep 5
echo
echo
	echo -e "             Dando permissão de escrita na pasta HTDOC, aguarde..."
	echo -e "------------------------------------------------------------------------"
		chmod 777 -R /opt/lampp/htdocs/
	echo -e "---------> Permissão concedida com sucesso."
		sleep 5
echo
echo
	echo -e "Pressione <Enter> para continuar com script."
		read
		sleep 5
echo
echo
#
#Detecta os sensores automaticamente
	echo -e "          Dectando os sensores, aguarde..."
	echo -e "------------------------------------------------------------------------"
		sudo sensors-detect --auto
	echo -e "---------> Sensores dectado automaticamente com sucesso."
		sleep 5
echo
echo
#
#Configuração do canky
	echo -e "Crindo arquivo do conky na home e configurando, aguarde..."
	echo -e "------------------------------------------------------------------------"
		mkdir -p ~/.config/conky && conky -C > ~/.config/conky/conky.conf
	echo -e "---------> Conky configurado com sucesso."
	sleep 5
echo
echo
#
# Fim do script
	echo -e "Pressione <Enter> para concluir o processo e sair"
	read
	echo -e "Fim do $0"
	exit 1