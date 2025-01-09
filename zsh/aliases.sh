alias ll='ls -lAhG'

gord443() {
    cd $1;
    ll;
}
alias cd='gord443'
alias vim='nvim'
alias vi='nvim'
alias e='nvim'
alias pip='pip3'
alias python='python3'

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

alias pyc='open -a pycharm\ ce'
alias pstorm='open -a phpstorm'


export EDITOR=nvim
