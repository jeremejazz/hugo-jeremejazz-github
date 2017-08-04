#!/bin/bash 


#remove public content 
echo "removing public "


rm -rf public
git subtree add --prefix=public git@github.com:jeremejazz/jeremejazz.github.com.git master --squash

# git subtree pull --prefix=public  git@github.com:jeremejazz/jeremejazz.github.com.git master
#run hugo compiler
echo "building public folder"
../bin/hugo
echo "compiling less files"
#less compiler 
lessc less/freelancer.less public/css/freelancer.css
#TODO minify. but might require to configure theme repo. 
# bette off this way for now

#create nojekyll file 
touch static/.nojekyll




echo "Starting deployment... press enter to Continue. CTRL + C to cancel"
read -p "Press enter to continue"
 
# Commit and push to master
# Commit and push to master

git commit -am "Updating site" && git push origin master

# Push the public subtree to the gh-pages branch
git subtree push --prefix=public git@github.com:jeremejazz/jeremejazz.github.com.git master
 

#enter credentials here  