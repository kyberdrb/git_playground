echo "File A - main - rebase " > rebase-file_A-main.txt
git add rebase-file_A-main.txt
git commit -m "rebase: Add rebase-file_A-main.txt to main branch"

echo "File B - main - rebase " > rebase-file_B-main.txt
git add rebase-file_B-main.txt
git commit -m "rebase: Add rebase-file_B-main.txt to main branch"

git push

git checkout -b rebase-feature

echo "Feature File D - rebase-feature" > rebase-feature_D.txt
git add rebase-feature_D.txt
git commit -m "rebase: Add rebase-feature_D.txt to rebase-feature branch"

echo "Feature File E - rebase-feature" > rebase-feature_E.txt
git add rebase-feature_E.txt
git commit -m "rebase: Add rebase-feature_E.txt to rebase-feature branch"

git push

git switch main

echo "File C - main - rebase" > rebase-file_C-main.txt
git add rebase-file_C-main.txt
git commit -m "rebase: Add rebase-file_C-main.txt to main branch"

git push

git log --oneline
git log --oneline rebase-feature

git switch rebase-feature
git checkout rebase-feature-backup # Back up branch 'rebase-feature'
git rebase main


git log --oneline main
git log --oneline

git status

----
On branch rebase-feature
Your branch and 'origin/rebase-feature' have diverged,
and have 3 and 2 different commits each, respectively.
  (use "git pull" if you want to integrate the remote branch with yours)
----

git switch main

git log --oneline
git log --oneline rebase-feature
git log --oneline origin/rebase-feature

git push --force-with-lease origin rebase-feature

git log --oneline
git log --oneline rebase-feature
git log --oneline origin/rebase-feature
