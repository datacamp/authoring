# A way to commit _book contents
# Copy the .gitignore and remove the last line from it being _book
# So we can add and commit
cp .gitignore .gitignore.tmp
sed '$ d' .gitignore.tmp > .gitignore
rm -f .gitignore.tmp

git add _book
git commit -m "book compiled"