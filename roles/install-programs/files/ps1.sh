# written originally by Yoshiki Vazquez Baeza
function egit (){
    # git specific usage for branching
    function branch_separator () {
        if [[ -n $(git rev-parse --abbrev-ref HEAD 2> /dev/null) ]]
        then
        echo "@"
        fi
    }
    function get_git_branch () {
        git rev-parse --abbrev-ref HEAD 2> /dev/null
    }

    function get_prompt () {
      if [ $(id -u) = 0 ]
      then
        echo '#'
      else
        echo '§'
      fi
    }

    export PS1='\[\033[1;32m\]\t \[\033[01;34m\]\w\[\033[0m\]$(branch_separator)\[\e[m\]\[\e[01;31m\]$(get_git_branch)\[\e[m\]\n$(get_prompt) '
}

# enable git flavored prompt
egit;
