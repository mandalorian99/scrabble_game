# Scrablle Game Demonstration Web App

## Overview 
This web app is basic application for demonstration purposes .In this app a user can create its profile to play scrabble game using its mobile number. A user can create his/her profile which is also editable . This app also has a leaderboard where top performers ranked based on there score . 

## Remaining Functinalities and scope of improvement
1. Web app UI could be better . 
2. Need to add full felged authentication system later . 
3. Leaderboard data can be updated using web sockets via action cable to make it more dynamic and real time . 

## Chanllenges Faced
1. Main issue to architect database such that it is easy to store as well easy to retrieve games metrics data from table . After each game we need to create two records to store data for both players . 

## Project Setup 

1. clone repo from github 
2. setup rails databse by running rails db:setup
3. populate data using rails db:seed
4. once above setps done successfully fire rails server . 

## Features of web app . 
1. A sesion based authentication system is setup for basic login and logout functionalities. 
2. user can setup his/her profile . 
3. user can edit his/her profile . 
4. database contraint put on phone number such that no duplicate record create noted that we using phone number for login functionality.
5. Error handling and reporting mechanism is placed for better error reporting . 

## Security Measures . 
1. For url prection attacks basic session based authentication is used to deny access to unauthorized user . 
2. SQL is sanitized in for to avoid sql injection  attacks . 
3. use of UUID for table ids instead of integers ids need to be implement . 
