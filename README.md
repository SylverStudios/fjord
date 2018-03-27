# Fjord

This is the super svelte server that provides a websocket api ONLY.
Uses Phoenix 1.3 with no UI, or DB.
This is an in memory pubsub server.


## Setup

* `mix deps.get`
* `mix phx.server`


## Horsin' Around

* `iex -S mix`
* `> Cache.fetch(1, %{})`
  * `>> %{}`
* `> Cache.set(1, %{user: "Aaron", data: "lots of it"})`
* `> Cache.fetch(1, %{})`
  * `>> %{user: "Aaron", data: "lots of it"}`


## Heroku

Call me : `damp-tor-73443`

Homebrew heroku if you haven't already

* `heroku update`
* `heroku login`
* `heroku git:remote -a instance-name-here`
* `heroku config:set SECRET_KEY_BASE=A_SECRET_KEY_SHOULD_GO_HERE`

Deploy

* `git push heroku master`

Useful

* `heroku logs --tail`

## How it works

It's all phoenix [Channels](https://hexdocs.pm/phoenix/channels.html) under the hood.
Every client connects to a "topic" which is something like "*" or "room:123" and that is the pubsub server.

Everyone in a particular "topic" will broadcast there video actions to everyone else.

The server has a couple of message types and we just take messages and broadcast them to the rest of the connected clients (not back to the sender)

### Message types

* new_msg    : `{body: "the message you want to send to everyone}`
* action     : `{type, video_time, world_time}`
* heartbeat  : `{video_time, world_time}`
