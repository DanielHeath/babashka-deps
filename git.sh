function git_checkout() {
    from=$1
    to=$2
    function is_met() {
        [ -d "$to/.git" ]
    }
    function meet() {
        git clone "$from" "$to"
    }
    process
}

function github_checkout() {
    from=$1
    to=$2
    git_checkout git@github.com:${from}.git $to
}

