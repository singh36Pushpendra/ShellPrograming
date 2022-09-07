for branch in `git branch`
do
    git checkout $branch
    if [ -d sort_arithmetic ]
    then
	rm -rv sort_arithmetic
	git commit -a -m "deleted from $branch"
	git push -u origin $branch
	git status
    fi
done
git checkout SortingArithmetic
