# Continuous Development using Jenkins

## Task 1
Create a new github repo and push the app folder to this repo:<br>
https://github.com/Martin-Muraskovas/cicd_learning<br>

## Task 2
1. Create a dev branch using git.<br>
`git checkout -b dev`

2. Make a change to the dev branch locally, push to github. Your jenkins job should trigger a new job if the tests pass on the dev branch.<br>
![alt text](image.png)<br>
![alt text](image-1.png)<br>

3. Your new job should merge the code with the main branch on github.
<<<<<<< HEAD
Bad practice to use git commands. Use a Jenkins plugin instead.<br>
![alt text](image-2.png)

### Diagram of Task 2
=======
Bad practice to use git commands. Use a Jenkins plugin instead.
>>>>>>> 44a6c76ca9eee028058cf322303d75667754fb33


## Task 3
Create an EC-2 instance to be used as a production environment.
This instance should have `Ubuntu 18.04 LTS` as the image.
The security group should allow:
   - Port 22 for SSH
   - Port 8080 for Jenkins
   - Port 3000 for node.js
<<<<<<< HEAD
   - Port 80 for HTTP.

### Diagram of Task 3
=======
   - Port 80 for HTTP
>>>>>>> 44a6c76ca9eee028058cf322303d75667754fb33

## Task 4

- Automate the process of step 1
- Copy the code
- Manually ssh in and check if code is there
- Manually start the app, check if it works, check if there are the new features
<<<<<<< HEAD
- Go back and automate starting the app

### Diagram of Task 4
=======
- Go back and automate starting the app
>>>>>>> 44a6c76ca9eee028058cf322303d75667754fb33
