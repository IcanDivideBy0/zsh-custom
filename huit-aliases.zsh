
# Extract sourcemap from LeHuit Kibana logs
function octosmstack() {
  while read line; do
    local pos=`grep -E -o "[0-9]+:[0-9]+" <<<$line `
    [ -n "$pos" ] && smfinder -P "$pos" "https://huit.lemonde.fr/app/main-app.js.map"
  done
}

# Launch a single LeHuit server test
# function octotest() {
#   mocha --require test/server/bootstrap.js --reporter=spec --watch $@

#   # Cursor is mangled by mocha, I don't know why...
#   tput init
# }

# mocha --watch is damn CPU intensive
alias octotest="find {server,test} -name '*.js' | entr mocha --require test/server/bootstrap.js --reporter=spec \$@"
