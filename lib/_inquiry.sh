#!/bin/bash

get_nome_logo() {
  
  print_banner
  printf "${WHITE} 💻 Digite a LOGOMARCA da empresa que ficará no painel; Ex: SysZap 🤖 Sistema Multiatendimento ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " nome_logo
}

get_cor_logo() {
  
  print_banner
  printf "${WHITE} 💻 Digite o CODIGO da COR que ficará no painel; Ex: #008000 (Vermelho) ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " cor_logo
}

get_usuario() {
  
  print_banner
  printf "${WHITE} 💻 Insira o usuario para gerenciar as instalações:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " usuario
}

get_mysql_root_password() {
  
  print_banner
  printf "${WHITE} 💻 Insira senha do usuario ${usuario}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " mysql_root_password
}

get_instancia_add() {
  
  print_banner
  printf "${WHITE} 💻 Digite o nome da empresa que deseja instalar (Utilizar Letras minusculas):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " instancia_add
}

get_max_whats() {
  
  print_banner
  printf "${WHITE} 💻 Digite o numero maximo de conexões que a empresa ${instancia_add} poderá cadastrar:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " max_whats
}

get_max_user() {
  
  print_banner
  printf "${WHITE} 💻 Digite o numero maximo de atendentes que a empresa ${instancia_add} poderá cadastrar:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " max_user
}

get_frontend_url() {
  
  print_banner
  printf "${WHITE} 💻 Digite o domínio do FRONTEND/PAINEL para a ${instancia_add}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_url
}

get_backend_url() {
  
  print_banner
  printf "${WHITE} 💻 Digite o domínio do BACKEND/API para a ${instancia_add}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_url
}

get_frontend_port() {
  
  print_banner
  printf "${WHITE} 💻 Digite a porta do FRONTEND para a ${instancia_add}; Ex: 3000 A 3999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_port
}


get_backend_port() {
  
  print_banner
  printf "${WHITE} 💻 Digite a porta do BACKEND para esta instancia; Ex: 4000 A 4999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_port
}

get_redis_port() {
  
  print_banner
  printf "${WHITE} 💻 Digite a porta do REDIS / AGENDAMENTO MSG para a ${instancia_add}; Ex: 5000 A 5999 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " redis_port
}

get_link_git() {
  
  print_banner
  printf "${WHITE} 💻 Insira o link do GITHUB do sistema:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " link_git
}

get_urls() {
  get_nome_logo
  get_cor_logo
  get_usuario
  get_mysql_root_password
  get_link_git
  get_instancia_add
  get_max_whats
  get_max_user
  get_frontend_url
  get_backend_url
  get_frontend_port
  get_backend_port
  get_redis_port
}

software_update() {
  get_instancia_add
  frontend_update
  backend_update
}

inquiry_options() {
  
  print_banner
  printf "${WHITE} 💻 Bem vindo(a) ao instalador SysZap, Selecione abaixo a proxima ação!${GRAY_LIGHT}"
  printf "\n\n"
  printf "   [1] Instalar o SysZap\n"
  printf "   [2] Atualizar o SysZap\n"
  printf "\n"
  read -p "> " option

  case "${option}" in
    1) get_urls ;;

    2) 
      software_update 
      exit
      ;;

    *) exit ;;
  esac
}


