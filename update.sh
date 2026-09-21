#!/bin/bash
read commit
echo "********************"
echo "Entering theme"
echo "********************"
echo ""
cd custom-hugo-dusk
git add *
git commit -m "$commit"
git push
cd ..
echo "********************"
echo "Entering main page"
echo "********************"
echo ""
cd blog
git submodule foreach git pull
git add *
git commit -m "$commit"
git push
cd ..
for filename in ./*/
do
    [[ $filename =~ ^(./blog/|./custom-hugo-dusk/)$ ]] && continue
    echo "********************"
    echo "Entering $filename"
    echo "********************"
    echo ""
    cd $filename
    git submodule foreach git pull
    git add *
    git commit -m "$commit"
    git push
    cd ..
done
