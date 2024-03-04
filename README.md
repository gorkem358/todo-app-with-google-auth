# Todo App with Google oAuth

This is a todo app, using google authentication for login.

These instructions will get you a copy of the project up and running on your local machine.

## Requirements

We will use Ruby on Rails with SQLite for this project so you should have it locally. If you don't follow instructions below.

```
https://gorails.com/setup
```

## Installing

Following steps will help you to pull project and use it locally.

### 1 - Prerequisites
```
Ruby installed on your system (we have talked about up there)
Bundler gem installed (gem install bundler)
```


### 2 - Clone the repository: 
```
git clone https://github.com/gorkem358/todo-app-with-google-auth.git
```

### 3 - Bundle install the dependencies: 
* get into directory of project in 

```
cd path_to_project
```
then

```
bundle install
```

### 4 - Create a Google Cloud Platform project and enable the Google OAuth API (optional)
I have pushed my own projects GOOGLE_CLIENT_ID and GOOGLE_CLIENT_SECRET in .example.env file. 
<br>
Remove the .example part of file name, keep it as .env. To use my project credentials keep content as it is, otherwise use your own.
```
GOOGLE_CLIENT_ID="221793251341-8n9npb6q50nmbisr3k63amdc510a6tkn.apps.googleusercontent.com"
GOOGLE_CLIENT_SECRET="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"
```

### 5 - Create database then run migrations:
```
rails db:create
rails db:migrate
```
### 6 - Start the application:
```
rails s
```

Now you can see project on your browser;
<br><br><br>
Visit localhost:3000



## Running the tests

```
rspec
```

Tadaaaa 🎉🎉
