alias ll='ls -lAhG'

eval "$(zoxide init zsh)"
gord443() {
    z $1;
    ll;
}
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

alias cd='gord443'
alias vim='nvim'
alias vi='nvim'
alias e='nvim'
alias pip='pip3'
alias python='python3'

alias pyc='open -a pycharm\ ce'
alias pstorm='open -a phpstorm'
alias wstorm='open -a webstorm'

export EDITOR=nvim

