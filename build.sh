#!/bin/bash 


#remove public content 
echo "removing public "
git rm -r public  

rm -rf public
git subtree add --prefix=public git@github.com:jeremejazz/jeremejazz.github.com.git master--squash

git subtree pull --prefix=public  git@github.com:jeremejazz/jeremejazz.github.com.git master
#run hugo compiler
echo "building public folder"
../bin/hugo

git add -A

echo "compiling less files"
#less compiler 
lessc less/freelancer.less public/css/freelancer.css
#TODO minify. but might require to configure theme repo. 
# bette off this way for now


echo "Starting deployment... press enter to Continue. CTRL + C to cancel"
read -p "Press enter to continue"


function deploy(){

}

deploy

#enter credentials here  