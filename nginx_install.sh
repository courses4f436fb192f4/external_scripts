#!/bin/bash

if [ -n "$1" ]
then

        if [ "$1" == "nginx" ]
        then
                apt update
                apt install "$1"

                rm /var/www/html/index.nginx-debian.html
                cp  ./greeting.html /var/www/html/
                echo "Done"
        else
                echo "only \"nginx\" as arg"
                echo "Exit"
        fi
else
    echo "run with arg \"nginx\" "
fi
