#!/bin/sh
if [ "$(pidof terminology)" ]
then
    # process was found
else
    # process not found
    nohup terminology -e 'tmux attach' >/dev/null 2>&1 &
fi

