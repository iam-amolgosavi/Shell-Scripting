#!/bin/bash

echo "Which app you want to install "

read name_of_application


sudo apt update

sudo apt-get install $name_of_application
