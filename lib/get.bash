#!/usr/bin/env bash
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.


ghget() {
  local src
  src=$1
  local path
  path=$2
  local dest
  dest=$3

  local url
  url="$src$path"

  curl "$url" --output "$dest" --silent
  return $?
}
