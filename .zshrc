# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="jaischeema"

plugins=(git
	 bundler
	 dotenv
	 rake)



source $ZSH/oh-my-zsh.sh

# User configuration
#if command -v tmux &> /dev/null && [ -z "$TMUX" ] && [ -n = "PSI"]; then
# "tmux attach-session -t default || tmux new-session -s default
#fi

#auto sugget

#starting directory
# cd ~


alias neofetch="neofetch --ascii ~/.config/neofetch/ascii"
alias vim="nvim"
