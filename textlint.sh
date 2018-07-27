#!/bin/sh

if [ -z "${TEXTLINTRC}" ]; then
  if [ -f /textlint/.textlintrc ]; then
    TEXTLINTRC=/textlint/.textlintrc
  else
    TEXTLINTRC=/etc/textlintrc
  fi
fi

exec textlint -c ${TEXTLINTRC} "$@"
