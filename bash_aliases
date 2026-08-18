# General aliases
alias actapt='sudo apt-get -y update && sudo apt -y update'
alias upgapt='sudo apt -y upgrade'
alias cleanapt='sudo apt autoremove -y'


# For GPU
alias gpu-monitor='watch nvidia-smi'

# For TMUX
alias cls="clear && printf '\e[3J'"

# Disk utils aliases
alias chkdsksp='df -h --total | grep /dev/sda | sort -rn '
alias largest='du --max-depth=1 2> /dev/null | sort -rn | head -n20'
# To resset terminal
alias rsttrm='exec "$SHELL"'
## alias path='echo -e ${PATH//:/\\n}'
alias path='sed "s/:/\n/g" <<< "$PATH" | sort | uniq'
# Show top 10 biggest subdirs in the current dir
# from: https://askubuntu.com/questions/5980/how-do-i-free-up-disk-space
alias ducks='du -cks * | sort -rn | head'

# Git aliases
alias   g='git'
alias gst='g status -sb'

# Change default vim for neovim
alias vim='nvim'


## fzf aliases
# Themed OneHalfDark
alias fzfp='fzf --preview="batcat --theme OneHalfDark --color always {}"'
alias fzfv='nvim $(fzf --preview="batcat --theme OneHalfDark --color always {}")'
alias fzfcd='cd "$(fd --type d --hidden --exclude .git | fzf --preview="tree -C {} | head -100")"'
# No theme (TokioNight Night defined in bashrc)
#alias fzfp='fzf --preview="batcat --color always {}"'
#alias fzfv='nvim $(fzf --preview="batcat --color always {}")'
#alias fzfcd='cd "$(fd --type d --hidden --exclude .git | fzf --preview="tree -C {} | head -100")"'

# Temposral ROS2
alias ros2start='source ~/.config/rosmgmt/ros2_jazz_conf.bash'

# Python enviroments
## alias initvenv='python -m venv .venv'
## alias actvenv='source .venv/bin/activate'

# Jupyter Notebook and Jupyter Lab aliases
## alias jpn='jupyter notebook'
## alias jpl='jupyter lab'

# Networking aliases
# Show open ports
alias ports='netstat -tulanp'
# Control output of networking tool called ping
# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s 2'

# Mover despues
## alias srcthis='source install/setup.bash'

# docker aliases
# from: "How to delete cache?" - https://forums.docker.com/t/how-to-delete-cache/5753
## alias docker_clean_images='docker rmi $(docker images -a --filter=dangling=true -q)'
## alias docker_clean_ps='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'
