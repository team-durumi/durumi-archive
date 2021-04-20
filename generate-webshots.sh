#!/bin/bash

x=()
while read -r row
do
  declare -A fields
  TARGETS=('codename', 'url')
  while IFS="=" read -r key value
  do
    if [[ "${TARGETS[*]}" =~ "$key" ]] && [ ! -z "$value" ]; then
      fields[$key]="$value";
    fi
  done < <(echo $row | jq -r "to_entries|map(\"\(.key)=\(.value)\")|.[]")
  
  capture-website ${fields['url']} --output=static/img/projects/${fields['codename']}.png --timeout=160
done < <(curl -sSL 'https://archives.durumi.io/index.json' | jq  -c '.data[]')
