#!/bin/bash
echo -n "Enter your commit: "
read msg_input


if [[ "$msg_input" =~ ^(feat|hotfix|fix|):.*$ ]]
    then
        pip freeze > requirements.txt && git add . && git commit -m "$msg_input"
        exit 0
    else
        echo "Message commit invalid with regex ^(feat|hotfix|fix|):.*$"
        exit 125
fi

