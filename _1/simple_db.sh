#!/usr/bin/env bash
db_set () {
  # echo a command to print its arguments to standard output
  # "$1,$2" arguments will be separated by a comma
  # > command that writes the output to a file called "database" if it wasn't there it will be created >> append > overwrite
  # database
  echo "$1,$2" >> database
}
db_get () {
  # tail takes the last occurance  if there are two objects
  grep "^$1," database | sed -e "s/^$1,//" | tail -n 1
}
