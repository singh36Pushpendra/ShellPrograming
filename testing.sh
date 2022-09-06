for branch in `git branch --list *UC`
do
    git checkout $branch
    if [ -f README.md ]
    then
	mv README.md emp_wage/
	git add .
	git commit -m "moving README.md in $branch"
	git push -u origin $branch
	git status
    fi
done
git switch piku
