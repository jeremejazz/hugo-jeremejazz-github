#!/bin/bash 


#remove public content 
echo "removing public "
  

rm -rf public
mkdir public 
#run hugo compiler
echo "building public folder"
../bin/hugo

git add -A

echo "compiling less files"
#less compiler 
lessc less/freelancer.less public/css/freelancer.css
#TODO minify. but might require to configure theme repo. 
# bette off this way for now

touch static/.nojekyll
