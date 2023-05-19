#!/usr/bin/env bash
echo -e "====================SCRIPT DE INSTALAÇÃO DE PACOTES BÁSICOS===================="                                         
[[ $UID -eq 0 ]] && { echo "Usuário logado como root. Iniciando processo de instalação de pacotes." ;                                    \
sleep 1 ; apt install xorg i3 pavucontrol vim pcmanfm openssh-server git telegram-desktop vlc neofetch baobab nitrogen flatpak steam ;   \
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo ;                                                \
apt install snapd ;                                                                                                                      \
snap install discord ;                                                                                                                   \
snap install spotify ;                                                                                                                   \
snap install code --classic ;                                                                                                            \
snap install firefox ;                                                                                                                   \
apt autoremove && apt autoclean ;                                                                                                        \
echo -e "====================ATUALIZAÇÃO FINALIZADA====================" ;							         \
exit 0 ;} || { echo -e "Ops... O script necessita de privilégios de superusuário para ser executado. Favor, entrar como root." ;         \
 exit 1 ;}                                                                                                                        
