# Git aliases.
Optimisation of commonly used git commands and chaining commands together to make my life easier.

git gud		: checkout into a branch based on a branch name substring. (e.g git gud 2000 = git checkout bug/kz/2000_crash)
git majonez	: Push current branch and checkout to master.
git try-merge   : Checkout and pull the master branch then return to previous branch and initiate merge.
git purge-local : Delete all local branches with the status 'gone'. (All branches deleted from remote)

[alias]
	gud = !sh -c \"git branch -a | grep -v remotes | grep $1 | head -n 1 | xargs git checkout\"
	majonez = "!git push; git checkout master"
	try-merge = "!git checkout master; git pull; git checkout -; git merge master"
	purge-local = "!git checkout master; git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -D"
