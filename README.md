[![Build Status](https://travis-ci.org/cdunham1989/ft_tech_test.svg?branch=master)](https://travis-ci.org/cdunham1989/ft_tech_test)

# Exercise

Build a website hosted in the cloud (e.g. AWS, Google, Heroku) that asks for and stores a simple rating score for using ft.com.

Provide a diagram of your site architecture showing key components that illustrate your approach.

### Optional Features
For bonus credit consider using one or more of these techniques:  
- Templated infrastructure as code.  
- Automated testing.
- Origami  Components/FT look and feel.
- The ability to view the ratings/results.

# Accessing the Web Application

http://cdunham1989-ftratings.eu-west-1.elasticbeanstalk.com
   
# Running the Application as a Docker Container

To build the application as a docker container:  
`docker build -t cdunham1989/ft_ratings .`

To run the application as a docker container:  
`docker run --rm -itP cdunham1989/ft_ratings`

To push this application to docker hub:  
`docker push cdunham1989/ft_ratings`

If you're interested in running the application without docker consult the Dockerfile for the commands needed.

# Building Infrastructure using Terraform

To setup Terraform within the project:
`terraform init`

To check the infrastructure being created by Terraform:
`terraform plan`

To implement the infrastructure use
`terraform apply`

# Web App User Stories

```
As a user
So I can leave a rating
I would like to be able to access the review site

As a user
So I can decide on a rating
I would like to be able to click the different rating options

As a user
So I can see which is my rating
I would like to have the option to leave my name

As a user
So I can see other users ratings
I would like to be able to see a breakdown of all ratings
```

# Process

To begin with I started setting up the web application. I decided to choose Ruby to do this as I felt more comfortable using this language for the web app. I wanted to get the bare-bones application up and running as quickly as possible so I could spend more time focussing on the cloud hosting of the application.

At the moment my application is very simple. There is a landing page which asks users for a rating of ft.com, an optional name field and a radio button with which the user can assign their rating value. Only when a value has been assigned can the user submit the form where they are taken to a simple confirmation page which thanks them for rating the site. This page has nothing else but a return button on it that takes them back to the original landing-page.

At this point I have not yet installed any sort of database to store the ratings and I am weighing up whether or not a database for this site is my best option. I am unsure how to host a database in the cloud as it is something I have, as of yet, not learned about in any way other than using Firebase with Swift in my final project at Makers Academy.

I am going to now spend a bit of time refactoring and changing the names of some of the objects/methods to make them a bit more clear. The web app is still very bare bones but all the functionality I want from it is there.

All edge cases and refactoring completed. Now moving on to storing the web application inside a docker container and pushing this to docker hub so that I can get it working with AWS.

Now that I have done that I have created an elastic beanstalk application on AWS. I decided to use Amazon Elastic Beanstalk due to its ease of entry. It seems to be a simple and effective way to host a docker container in AWS. It has less control than using ECS,but that isn't something I really need for this simple web app. I copied an image of the application from docker hub into a container running at the following address:
http://cdunham1989-ftratings-test.eu-west-1.elasticbeanstalk.com/

I have now used Terraform to implement the infrastructure for hosting the web app in AWS.

## Optional Features

The ability to view the ratings/results - This functionality has been implemented from within the application. The web app has a seperate link at the bottom of the page which takes you through to the page to view all ratings submitted so far.

Automated testing - Feature tests have been completed for all three of the pages within the web application.

Templated infrastructure as code - I am now using Terraform to generate the infrastructure for hosting the web application in Amazon Elastic Beanstalk on AWS.

Origami Components/FT look and feel - I opted to focus more time on developing the web app and getting it hosted in the cloud using Terraform. Using Origami/CSS to improve the look of the app, giving it the Financial Times branding is something I wish to add in later if I have time.

## Other things I would improve if I had time:

Database - If I have time, the last thing I would like to try is to rebuild the web apps basic structure to save the ratings inside a database. This would mean I would have to host this database inside a seperate docker container, or use an Amazon RDS instead.