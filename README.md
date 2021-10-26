# GameJournal
'GameJournal' is a Sinatra-based web-app, which allows users to create accounts, keep a list of games they own, and view other games both owned by other users and those that exist within the app's library.

## Installation
After cloning the repo, simply navigate to the app's main directory:
`cd gamejournal-sinatra-app`
and then execute the following:
`bundle install`

## Development
To start a local server with the app, run:
```sh
shotgun
```
And depending on what is returned, type one of the following into the browser:
- If you see `Listening on localhost:9292`, then enter the URL `http://localhost:9292/` into your browser.
- Otherwise, you should see `Your server is running at 174.138.35.103:56412`, with `http://174.138.35.103:56412` being the URL you will want to enter into your browser.

### Highlights
- Structured MVC framework with [Sinatra gem’s DSL](https://github.com/sinatra/sinatra)
- Used custom CSS for styling views
- Designed database schema and configured SinatraActiveRecord associations

# Contributing
Bug reports, pull requests, and any additional comments/concerns are welcome on GitHub at https://github.com/saurookadook/gamejournal-sinatra-app. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.
