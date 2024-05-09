# Continuous Development using Jenkins

## Task 1
Create a new github repo and push the app folder to this repo:<br>
https://github.com/Martin-Muraskovas/cicd_learning

## Task 2
1. Create a dev branch using git.
`git checkout -b dev`

2. Make a change to the dev branch locally, push to github. Your jenkins job should trigger a new job if the tests pass on the dev branch.
![alt text](image.png)
![alt text](image-1.png)

3. Your new job should merge the code with the main branch on github.
    ```
    git checkout main
    git pull origin main
    git merge dev
    git add .
    git commit -m "merged dev branch into main branch"
    git push origin main
    ```

## Task 3
Create an EC-2 instance to be used as a production environment.
This instance should have `Ubuntu 18.04 LTS` as the image.
The security group should allow:
   - Port 22 for SSH
   - Port 8080 for Jenkins
   - Port 3000 for node.js
   - Port 80 for HTTP

## Task 4

automate process of ssh step 1
copy code
manually ssh in and check if code is there
manually start app, check if it works, check if there are new features

go back and automate starting the app