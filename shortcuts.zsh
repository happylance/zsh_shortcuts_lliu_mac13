alias aw='ansiweather'
alias glgl='glg --author=Liang'
alias nb='$HOME/dev/scripts/nextBus/toOffice.sh'
alias nexta='ssh ec2 -t "tail /var/log/apache2/next/access.log"'
alias nexte='ssh ec2 -t "tail /var/log/apache2/next/error.log"'
alias pj='python -m json.tool'
alias pjl='python -m json.tool | less'
alias psh='php -S 192.168.1.6:8888'
alias sdr2='screen -dR lliu2'
alias sdr='screen -dR lliu1'
alias sdre2='ssh ec2 -t "screen -U -dR lliu2"'
alias sdre='autossh -M 0 ec2 -t "screen -U -dR lliu1"'
alias sew="ssh ec2 sudo tcpdump -U -s0 -w - 'not port 22' | wireshark -k -i -"
alias sr='$HOME/dev/scripts/reminder/showReminder.sh'
alias sxe='autossh -M 0 -XC4c arcfour,blowfish-cbc ec2 -t "screen -U -dR lliu1"'
alias wh='which'
di() { open dict://$1 }
dt() { dict -h dict.tw $1 | less }
en() { [[ -d "$1" ]] && {cd "$1"; return}; [[ -f "$1" ]] && less $1 }
go() { search=""; echo "Googling: $@"; for term in $@; do search="$search%20$term" done; open "http://www.google.com/search?q=$search" }
tcx() { touch "$1" && chmod +x "$1" }
utm() { df -h | grep TimeMachine | awk '{printf $1}' | xargs diskutil unmountdisk }
