# Exercise

Build a website hosted in the cloud (e.g. AWS, Google, Heroku) that asks for and stores a simple rating score for using ft.com.

Provide a diagram of your site architecture showing key components that illustrate your approach.

### Optional Features
For bonus credit consider using one or more of these techniques:  
- Templated infrastructure as code.  
- Automated testing.
- Origami  Components/FT look and feel.
- The ability to view the ratings/results.

# User Stories

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

For now I have stored the ratings in an array within the application. But I may tear this functionality out at a later date and replace it with a database hosted in the cloud with the application.

I have also opted to focus more time on developing the web app and getting it hosted in the cloud rather than giving it the Financial Times branding. This will be something I add in later if I have time.

I have also decided to attempt to implement the functionality to be able to display all the ratings that have been received so far.

I am going to now spend a bit of time refactoring and changing the names of some of the objects/methods to make them a bit more clear. The web app is still very bare bones but all the functionality I want from it is there. 