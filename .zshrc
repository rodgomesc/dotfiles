export LANG=en_US.UTF-8

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh


# Add java 1.8 as a default java version
#export 
# PATH="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/bin:$PATH"
export PATH="/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home/bin:$PATH"

export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_NDK=$ANDROID_HOME/ndk/21.4.7075529
export ANDROID_NDK_HOME=$ANDROID_HOME/ndk/21.4.7075529
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools



eval $(thefuck --alias)


export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export XDG_CONFIG_HOME="$HOME/.dotfiles"


export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"


alias lcf="emulate sh -c 'adb logcat *:F'"
alias lce="emulate sh -c 'adb logcat *:E'"
alias lcv="emulate sh -c 'adb logcat *:V'"
alias lci="emulate sh -c 'adb logcat *:I'"
alias lcd="emulate sh -c 'adb logcat *:D'"

# alias ldd="otool -L"

# add vcpkg to path
export VCPKG_ROOT="$HOME/vcpkg"
export VCPKG_DISABLE_METRICS=1
export CMAKE_TOOLCHAIN_FILE="$HOME/vcpkg/scripts/buildsystems/vcpkg.cmake"

autoload bashcompinit
bashcompinit
source /Users/rodrigogomes/vcpkg/scripts/vcpkg_completion.zsh
alias vcpkg="$HOME/vcpkg/vcpkg"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/opt/homebrew/opt/ffmpeg@2.8/bin:$PATH"


# fix bug with realpath in tensorflow compilation on mac m1
# brew install coreutils
alias realpath='grealpath'


# Add alias for yarn with warning message
# alias yarn='echo "⚠️ WARNING: It is recommended to use pnpm instead of yarn. you can remove this on ~/.zshrc"'



# shortcut for pnpm
alias pn='pnpm'


# shortcut for code insiders
alias code='code-insiders'



# add gfind from brew install findutils to path
PATH=$(brew --prefix)/opt/findutils/libexec/gnubin:$PATH

# add gsed from brew install gnu-sed to path
PATH=$(brew --prefix)/opt/gnu-sed/libexec/gnubin:$PATH


# add binutils from brew install binutils to path, for readelf
PATH=$(brew --prefix)/opt/binutils/bin:$PATH

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE="/Users/rodrigogomes/.local/bin/micromamba";
export MAMBA_ROOT_PREFIX="/Users/rodrigogomes/micromamba";
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    if [ -f "/Users/rodrigogomes/micromamba/etc/profile.d/micromamba.sh" ]; then
        . "/Users/rodrigogomes/micromamba/etc/profile.d/micromamba.sh"
    else
        export  PATH="/Users/rodrigogomes/micromamba/bin:$PATH"  # extra space after export prevents interference from conda init
    fi
fi
unset __mamba_setup
# <<< mamba initialize <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/rodrigogomes/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/rodrigogomes/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/rodrigogomes/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/rodrigogomes/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/Users/rodrigogomes/miniconda3/etc/profile.d/mamba.sh" ]; then
    . "/Users/rodrigogomes/miniconda3/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<



export REACT_EDITOR=code

