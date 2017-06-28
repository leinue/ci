#!/bin/sh

git init --bare $1.bare
git clone $1.bare $1

cd $1.bare/hooks
cat>post-update<<EOF

#!/bin/sh

HOMEPAGE_DIR=$1
if [ -z "\$GIT_DIR" ]; then
    echo "Don't run this script from the command line." >&2
    exit 1
fi

unset GIT_DIR

cd \$HOMEPAGE_DIR

#git stash
#git fetch origin
#git rebase origin/master
git pull

EOF
chmod +x post-update
