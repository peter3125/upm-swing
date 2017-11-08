#!/bin/bash

echo -n Password:
read -s password1
echo

echo -n Retype Password:
read -s password2
echo

if [ "$password1" == "" ]; then
  echo "invalid password"
  exit 1
fi

if [ "$password1" == "$password2" ]; then
  rm -f wachtwoord-rex.7z
  7z a ../wachtwoord-rex.zip -mem=AES256 -p$password1 *
  mv ../wachtwoord-rex.zip ../wachtwoord-rex.7z
  echo "encrypted, done"
  exit 0
fi

echo "password not matching"
exit 1
