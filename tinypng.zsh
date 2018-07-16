function tinypng() {
  source "$HOME/.tinypng.rc"
  file="$1"

  data=$(curl --user api:$TINYPNG_API_KEY --data-binary "@$file" https://api.tinify.com/shrink)

  jq . <<<"$data"

  url=$(jq -r .output.url <<<"$data")
  curl $url > $file
}
