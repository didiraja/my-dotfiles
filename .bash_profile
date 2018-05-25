# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[0;39m\]\u@\h \[\033[1;35m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ \[\033[1;37m\]"

alias composer="php /usr/local/bin/composer.phar"

#export PATH="/usr/local/bin:$PATH"

export PATH="/Applications/XAMPP/xamppfiles/bin:$PATH"

alias addgit="git add . && git commit -m"

alias buildgit="npm run gulp build && git add . && git commit -m"

alias push="git ftp push && git push"

alias build="npm run gulp build"
