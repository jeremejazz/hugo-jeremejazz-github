#!/usr/bin/env bash


#remove public content 
echo "removing public "
git rm -r public  


#run hugo compiler
echo "building public folder"
../bin/hugo

echo "compiling less files"
#less compiler 
lessc less/freelancer.css public/css/freelancer.css
#TODO minify. but might require to configure theme repo. 
# bette off this way for now


echo "Starting deployment... press enter to Continue. CTRL + C to cancel"
read -p "Press enter to continue"
cd public 
git add .
git commit -m "update website"
echo "Committed repo"
echo "Pushing to origin, please enter credentials"
git push origin master

#enter credentials here  