#!/usr/bin/env bash

if [[ "$#" != "1" ]] ;
then
  echo "Error calling:" $0
  echo "usage: bash" $0 "<htcondor_password>"
  exit 1
fi

if [[ ! -r /etc/condor/passwords.d/POOL ]] ;
then
  echo -n "$1" | condor_store_cred add -c -i -
fi
