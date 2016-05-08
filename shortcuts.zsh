alias apti='$HOME/dev/htc/apt_installed.sh'
alias aptni='$HOME/dev/htc/apt_not_installed.sh'
alias aw='ansiweather'
alias black_background='osascript -e "tell application \"Terminal\" to set background color of window 1 to {0, 0, 0}"'
alias black_text='osascript -e "tell application \"Terminal\" to set normal text color of window 1 to {0, 0, 0}"'
alias cui='carthage update --platform iOS'
alias glgl='glg --author=Liang'
alias nb='$HOME/dev/scripts/nextBus/toOffice.sh'
alias nexta='ssh ec2 -t "tail /var/log/apache2/next/access.log"'
alias nexte='ssh ec2 -t "tail /var/log/apache2/next/error.log"'
alias pj='python -m json.tool'
alias pjl='python -m json.tool | less'
alias psh='php -S 192.168.1.6:8888'
alias sbtl='ssh bsd -t "tmux attach -t lliu || tmux new -s lliui"'
alias sdr2='screen -dR lliu2'
alias sdr='screen -dR lliu1'
alias sdre2='ssh ec2 -t "screen -U -dR lliu2"'
alias sdre='autossh -M 0 ec2 -t "screen -U -dR lliu1"'
alias setl='autossh ec2 -t  tmux attach -t lliu'
alias sew="ssh ec2 sudo tcpdump -U -s0 -w - 'not port 22' | wireshark -k -i -"
alias shtc='autossh -M 0 htc'
alias sr='$HOME/dev/scripts/reminder/showReminder.sh'
alias sxe='autossh -M 0 -XC4c arcfour,blowfish-cbc ec2 -t "screen -U -dR lliu1"'
alias wh='which'
alias white_background='osascript -e "tell application \"Terminal\" to set background color of window 1 to {65535, 65535, 65535}"'
alias white_text='osascript -e "tell application \"Terminal\" to set normal text color of window 1 to {65535, 65535, 65535}"'
bb() { black_background && white_text }
di() { encoded=$(echo $@ | sed 's/ /%20/g'); open dict://$encoded; }
dt() { dict -h dict.tw $1 | less }
en() { [[ -d "$1" ]] && {cd "$1"; return}; [[ -f "$1" ]] && less $1 }
go() { echo "Googling: $@"; search=$(echo $@ | sed 's/ /%20/g'); open "http://www.google.com/search?q=$search" }
tcx() { touch "$1" && chmod +x "$1" }
utm() { df -h | grep TimeMachine | awk '{printf $1}' | xargs diskutil unmountdisk }
wb() { white_background && black_text }
