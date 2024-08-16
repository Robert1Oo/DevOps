# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


set -o noclobber

#handling packages and programs
alias q='doas xbps-query -Rs'
alias d='doas xbps-install -S'
alias rem='doas xbps-remove -R'
alias u='d; doas xbps-install -u xbps; doas xbps-install -u'

#shutdown, hibernate and restart
alias of='doas poweroff'
alias re='doas reboot'
alias hi='doas zzz -Z'

#youtube downloader, each command followed by video link 
alias yt='yt-dlp -F'		 #available quality
alias pl='--yes-playlist'	 #added after quality to down the full playlist & followed by link
alias 720='yt-dlp -f 22'	
alias 360='yt-dlp -f 18'
alias 144='yt-dlp -f 17'

#programs
alias 9='ranger /home/roberto/ntfs/College/S9'
alias r='ranger'
alias mm='wmname LG3D; sudo /usr/local/MATLAB/R2018b/bin/matlab'
alias vs='code-oss'
alias ev='doas evillimiter'
alias v='doas vim'
alias g='git'
alias t='thunar'
alias s='subl4'
alias on='onlyoffice-desktopeditors'
alias pdf='cd .config; cd pdfarranger; python3 -m pdfarranger & cd'
alias xx='cmatrix -B'
alias dc='doas docker container'
alias dm='doas docker image'
alias dcs='docker ps -aq | xargs docker stop'

#bash
alias al='alias'
alias h='history'
alias c='clear'
alias n='neofetch'
alias ht='htop'
alias k='pkill'
alias l='ls'
alias ll='ls -l'
alias conf='doas xbps-reconfigure -fa'
alias ca='doas xbps-remove -Oo; doas vkpurge rm all'
alias cp='doas cp -r'
alias g='grep -i'
alias att='doas atd; at now +'
#system
alias graphics='i xf86-video-intel'
alias x='startx'
alias +x='chmod +x'
alias z='zip -r'  #followed by: output_zippedname.zip input_foldername #and/or input_filename
alias uz='unzip'
alias ur='unrar x'
alias a='alsamixer; doas alsactl store'
alias m='doas mount /dev/sdb1 ~/usb'
alias um='doas umount /dev/sdb1' #or 'doas umount ~/usb'
alias e='exit'
alias wof='doas ip link set wlp2s0 down'
alias won='doas ip link set wlp2s0 up'
alias mac='macchanger -s wlp2s0'
alias omac='wof; doas macchanger -p wlp2s0; won'
alias rmac='wof; doas macchanger -r wlp2s0; won'
alias dev='lsblk; echo; blkid'
alias md='doas ntfs-3g' #followed by: /dev/storage_name ~/mount_folder
alias ud='doas umount ~/ntfs1' #or 'doas umount /dev/sd_name'
alias mkd='mkdir'

#Using NetworkManager's nmcli tool
alias hots='doas nmcli device wifi connect Roberto password 88888888'
alias nm='doas nmcli device wifi connect esp32-server password javajava32' #home wifi
alias nm1='doas nmcli device wifi connect Madina password madina123'
alias nm2='doas nmcli device wifi connect Madina108 password madinatalabaasunet'
alias nml='nmcli device wifi list'
alias nma='nmcli connection show --active'
alias p='ping 8.8.8.8'

#users
#alias whos=' awk -F: '{ if ($6 ~ "^/home" || $6 ~ "^/Users") print $1 }' /etc/passwd '

alias whos="awk -F: '{ if (\$6 ~ \"^/home\" || \$6 ~ \"^/Users\") print \$1 }' /etc/passwd" #users

alias chusr='doas usermod -l' #followed by: new_username old_username
alias chusrd='doas usermod -m -d' #followed by: /home/new_dirname username, then chfn usrname(not a must
alias adg='doas usermod -aG' #followed by group user_to_be_added_to_group
alias logas='su -' #followed by the other user
alias pass='sudo passwd' #followed by the user to change his password

alias ag='doas getent group'


#DevOps
alias gc='git clone'
