exec &> capture.txt
git pull
if [ -n "$(git status -s)" ]
then
	git add --all
	git commit -m "Automatic commit"
fi
if [ -n "$(git log origin/master..master)" ]
then
	git push
fi
