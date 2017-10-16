#!/bin/bash

git add --all
if [[ $# -gt 0 ]];then
	git commit -m "$@"
else
	git commit
fi
git push
