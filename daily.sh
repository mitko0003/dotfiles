git pull
if [ -n "$(git status -s)" ]
then
	git add --all
	git commit -m "Automatic commit"
	git push
fi
