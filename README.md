## rack-redirectorr

Rack app for redirecting all requests to specified URL.

## Setup for Heroku

````
git clone git@github.com:SonicGarden/rack_redirectorr.git

# Create a new Heroku app (E.g. your-awesome-app)

git remote add heroku git@heroku.com:your-awesome-app.git

heroku config:set REDIRECT_URL=http://where-you-like.to

git push heroku master

# Access http://your-awesome-app.herokuapp.com and
# confirm if your request is redirected to
# http://where-you-like.to
````