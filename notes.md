curl -i -N -H "Connection: Upgrade" -H "Upgrade: websocket" -H "Host: localhost:4000" -H "Origin: http://localhost:4000" http://localhost:4000/socket/websocket

curl -i -N -H "Connection: Upgrade" -H "Host: localhost" -H "Upgrade: websocket" -H "Origin: http://localhost:4000" localhost:4000/socket/websocket

curl -i -N -H "Connection: Upgrade" -H "Host: localhost" -H "Upgrade: websocket" -H "Origin: localhost:4000" localhost:4000/socket/websocket

localhost:4000/socket/websocket


## Deployment - Heroku

Prereq, donwload heroku CLI. You can homebrew it

* `heroku update`
* `heroku login`
* `heroku git:remote -a protected-peak-28859`
* `heroku config:set SECRET_KEY_BASE=A_SECRET_KEY_SHOULD_GO_HERE`

Deploy
* `git push heroku master`

ACTUAL
 * heroku config:set SECRET_KEY_BASE="slV3HUCfDTTtr0/jjIYQBzgMQiTylKe2ntVq5s8v4dh76IUeDWOUyfgBtMGh1Ld8" -a protected-peak-28859

heroku create --buildpack "https://github.com/HashNuke/heroku-buildpack-elixir.git"




# Try this

heroku buildpacks:add https://github.com/negativetwelve/heroku-buildpack-subdir.git
heroku buildpacks:add --index 2 https://github.com/HashNuke/heroku-buildpack-elixir.git
vim .buildpack



# and this
git subtree push --prefix fjord heroku master