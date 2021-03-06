
git_cmd=(
  'add'
  'blame'
  'branch'
  'checkout'
  'cherry-pick'
  'clone'
  'commit'
  'diff'
  'fetch'
  'log'
  'lola'
  'mergetool'
  'pull'
  'push'
  'rebase'
  'remote'
  'reset'
  'revert'
  'stash'
  'status'
)

for cmd in "${git_cmd[@]}" ; do
  alias $cmd="git $cmd"
done

function root () {
  local root="$(git rev-parse --show-cdup)"
  [ -n "$root" ] && cd "$root"
}
