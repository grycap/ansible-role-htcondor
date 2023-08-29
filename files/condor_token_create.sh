#!/usr/bin/env bash

if [[ "$#" != "1" ]] ;
then
  echo "Error calling:" $0
  echo "usage: bash" $0 "<htcondor_server>"
  exit 1
fi

if [[ ! -r /etc/condor/tokens.d/condor@$1 ]] ;
then
  condor_token_create -identity condor@$1 > /etc/condor/tokens.d/condor@$1
fi
