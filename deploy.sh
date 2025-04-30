rm -rf public/
HUGO_ENV="production" hugo --gc || exit 1
msg="rebuilding site `date`"
cd ../snpcp.github.io
git pull
rm -rf *
cp -r ../xzh/public/* .
git add -A
git commit -m "$msg"
git push origin master
cd -
