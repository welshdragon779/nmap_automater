#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Error: No arguments provided."
  exit 1
fi

if [[$# -lt 1]]; then
echo " Usage: ./nmapscan.sh ip" 
exit 1
fi

echo "Loading...."

echo   "Starting NMAP Scanning ............"

ip_range=$1
port_range=$2

nmap  $ip_range  -A -vvv -Pn -sC -sV  

echo "Nmap scan done" 
