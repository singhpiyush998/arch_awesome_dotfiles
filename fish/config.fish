if status is-interactive
    # Commands to run in interactive sessions can go here


    # Shell
    set -g fish_prompt_pwd_dir_length 3
    
    set fish_greeting ""
    # Aliases
    alias ll='exa -l -h --icons'
    alias la='exa -la -h --icons'
    alias build='sudo pacman -S $1'
    alias remove='pamac remove $1'
    alias search='pamac search $1'
    alias update='sudo pacman -Syu'
    alias dev='cd ~/Documents/Coding; ll'
    alias 100Devs='code ~/Documents/Coding/100Devs'
    alias nv='nvim $1'


    # Auto Start Commands
    set -x fish_startup_command 'rxfetch'

     if set -q fish_startup_command
        eval $fish_startup_command
        set -e fish_startup_command
    end

    # Prompt
    function fish_prompt -d "Write out the prompt"
        printf '%s%s%s%s' \ (set_color $fish_color_cwd) (prompt_pwd) \n ' 󰊠 🠒 ' (set_color normal)
    end

end
