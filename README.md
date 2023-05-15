Todo App
This is a simple to-do app written in Python and Flask. It can be run locally or deployed to AWS.

Features
Create, edit, and delete to-do items
Support for Markdown formatting for to-do items
Getting Started
To run the app locally, you will need to have Python and Flask installed. Once you have installed Python and Flask, you can run the app by following these steps:

Clone the repository
cd into the directory
Run pip install -r requirements.txt
Run python app.py
The app will be running on port 5000. You can access it by going to http://localhost:5000 in your web browser.

Deploying to AWS
To deploy the app to AWS, you will need to have an AWS account and the AWS CLI installed. Once you have an AWS account and the AWS CLI installed, you can deploy the app by following these steps:

Create an S3 bucket
Upload the contents of the repository to the S3 bucket
Create an IAM role with the following permissions:
AmazonS3FullAccess
AmazonEC2ContainerServiceFullAccess
Attach the IAM role to the EC2 instance that you will be using to run the app
Create a CloudFront distribution
Configure the CloudFront distribution to point to the S3 bucket
The app will be deployed to AWS and will be accessible from the public internet.