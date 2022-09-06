for branch in `git branch --list *UC`
do
    git checkout $branch
    if [ ! -d emp_wage ]
    then
	echo emp_wage is not exist in branch $branch
	mkdir emp_wage
	mv empWageComputation.sh emp_wage/
	git add .
	git commit -m "renaming in $branch"
	git push -u origin $branch
	git status
    fi
done
