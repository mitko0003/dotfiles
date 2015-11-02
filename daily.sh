git pull
if [ -n "$(git status -s)" ]
then
	echo "Not commited stuff"
	git add --all
	git commit -m "Automatic commit"
fi
if [ -n "$(git log origin/master..master)" ]
then
	echo "Not pushed stuff"
	git push
fi
