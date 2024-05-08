# Setting up Continuous Integration using Jenkins

## 1. New item
Select new item on the Jenkins Burger Menu<br>

## 2. Enter the Name -> Select Freestyle Project
![alt text](martin-images/1.png)

## 3. Set it as a GitHub project
![alt text](martin-images/2.png)

## 4. Restrict where the project can be run.
In our case we want it run on an instance that is running ubuntu with node installed.
![alt text](martin-images/3.png)

## 5. Create an SSH key pair
Set the private key up on Jenkins:<br>
![alt text](martin-images/4.png)<br>
Set the public key up on GitHub:<br>
![alt text](<martin-images/4 - github public key.png>)<br>

## 6. Creating a webhook
Tick GitHub hook trigger as a build trigger option.<br>
![alt text](martin-images/5.png)<br>
Go to GitHub and set the Payload URL as the Jenkins IP appended with `/github-webhook/`<br>
![alt text](<martin-images/5 - github.png>)<br>
Select pushes, and pull requests as triggers. <br>
![alt text](<martin-images/5 - github p2.png>)<br>

## 7. Save, Build, and Test
Save your project, and create your first build.<br>
To test that the webhook is working, commit and push something to your GitHub repository.<br>
This is the expected outcome:<br>
![alt text](martin-images/8.png)