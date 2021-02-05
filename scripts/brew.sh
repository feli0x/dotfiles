#!/bin/sh

# }}}
Color_off='\033[0m'
Color='\033[1;35m'

# }}}
PACKAGES='npm neofetch yarn tree htop'
CASKS='iterm2 visual-studio-code docker google-chrome brave-browser firefox-developer-edition browserosaurus vlc github raspberry-pi-imager kap'

# }}}
fancyprint () {
    printf '%b\n' "$1$2$Color_off" >&2
}

# }}}
PS3='➡ '
options=("install homebrew" "install packages" "install casks" "exit")
select opt in "${options[@]}"
do
    case $opt in
        "install homebrew")
             fancyprint $Color ">> INSTALLING HOMEBREW"
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
            echo "1) install homebrew"
            echo "2) install packages"
            echo "3) install casks"
            echo "4) exit"
            continue
            ;;
        "install packages")
            fancyprint $Color ">> INSTALLING: ${PACKAGES}"
            brew install ${PACKAGES}
            clear
            fancyprint ${Color} "Installed ${PACKAGES}"
            echo ""
            echo "1) install homebrew"
            echo "2) install packages"
            echo "3) install casks"
            echo "4) exit"
            continue
            ;;
        "install casks")
            fancyprint $Color ">> INSTALLING: ${CASKS}"
            brew install --cask ${CASKS}
            clear
            fancyprint ${Color} "Installed ${PACKAGES}"
            echo ""
            echo "1) install homebrew"
            echo "2) install packages"
            echo "3) install casks"
            echo "4) exit"
         continue
            ;;
        "exit")
            echo ""
            fancyprint ${Color} "BUH-BYE! 👋"
            echo ""
            sleep 1
            exit 0
            ;;
        *) fancyprint ${Color} "$REPLY is not an option, dude...";;
    esac
done

# }}}
