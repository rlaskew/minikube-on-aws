#!/bin/bash

username=$(echo "$USER")
usermod -aG docker $1
echo $username
