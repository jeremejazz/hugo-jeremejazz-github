#! usr/local/bin


#remove public content 
git rm -r public  


#run hugo compiler
../bin/hugo

echo "Deploying..."
cd public 
git add .
git commit -m "update website"
echo "Committed repo"
echo "Pushing to origin, please enter credentials"
git push origin master

#enter credentials here  