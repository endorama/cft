if [[ ! -o interactive ]]; then
    return
fi

compctl -K _cft cft

_cft() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(cft commands)"
  else
    completions="$(cft completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
