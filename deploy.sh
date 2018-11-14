#!/bin/bash

git add *

echo "Put in a comment for the commit"

read comment

echo "du sks $comment"

git commit -m "$comment"

git push
