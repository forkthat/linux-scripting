function git-acp {
  git add .
  git commit -a -m "$1"
  git push
}

alias bat-60="echo 60 | sudo tee /sys/class/power_supply/BAT0/charge_control_end_threshold"
alias bat-80="echo 80 | sudo tee /sys/class/power_supply/BAT0/charge_control_end_threshold"
alias bat-100="echo 100 | sudo tee /sys/class/power_supply/BAT0/charge_control_end_threshold"
alias bat-stat="cat /sys/class/power_supply/BAT0/charge_control_end_threshold && cat /sys/class/power_supply/BAT0/status"

alias lg="lazygit"
alias cdgh="cd ~/GitHub/"
alias ls="ls -l --color=auto"
alias lsa="ls -a --color=auto"

alias yt-dlpa="yt-dlp --external-downloader aria2c"
alias yt-1080="yt-dlp -S 'res:1080'"
alias yt-720="yt-dlp -S 'res:720'"
alias yt-480="yt-dlp -S 'res:480'"
alias yt-360="yt-dlp -S 'res:360'"

alias up="sudo apt update && sudo apt upgrade"

# sudo snap refresh

# you don't need sudo for flatpak
# flatpak update

# Spotdl - download music from spotify
spotdl-playlist() { 
	spotdl download "$1" --output "{artists} - {title}"
}
spotdl-artist() { 
	spotdl download "$1" --output "{artist}/{album}/{disc-number}:{track-number} - {title}.{output-ext}"
}
