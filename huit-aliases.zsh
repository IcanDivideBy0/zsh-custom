
# Extract sourcemap from LeHuit Kibana logs
function octosmstack() {
  while read line; do
    local pos=`grep -E -o "[0-9]+:[0-9]+" <<<$line `
    [ -n "$pos" ] && smfinder -P "$pos" "https://huit.lemonde.fr/app/main-app.js.map"
  done
}

# Launch a single LeHuit server test
alias octotest='mocha --require test/server/bootstrap.js --reporter=spec --watch $@'
