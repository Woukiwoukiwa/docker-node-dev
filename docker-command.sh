#!/bin/bash

if test -f .dockerdev;
then
    echo node modules exists;
else
    echo install node modules
    yarn install
    touch .dockerdev
fi

echo run docker command;
yarn docker-command;