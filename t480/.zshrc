# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

fastfetch

      alias vim="nvim"
      alias ls="eza -la --group-directories-first"
      alias cat="bat"
      alias rm="trash"
#      alias nixgen="sudo nix-env --list-generations --profile /nix/var/nix/profiles/system"
#      alias reload="hyprctl reload"
#      alias aliases="cat $HOME/nixos/modules/hm/zsh.nix"
#      alias tsup="sudo tailscale up --exit-node=100.84.38.63 --accept-routes"
#      alias tsdn="sudo tailscale down"
#      alias tsstat="tailscale status"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/cachyos-zsh-config/cachyos-config.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
