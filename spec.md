# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app => Sinatra gem required and all of controllers inherit from `Sinatra::Base`
- [x] Use ActiveRecord for storing information in a database => ActiveRecord gem properly installed, models inherit from `ActiveRecord::Base`, and migrations contain Ruby classes which inherit from `ActiveRecord::Migration`, all of which is done to enable mapping Ruby objects in models to the database.
- [x] Include more than one model class (list of model class names e.g. User, Post, Category) => I probably have too many...
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Posts) => Again, probably have too many...
- [x] Include user accounts => Users can have accounts, but must sign up with a username, email, and password, and must not use a username and/or email which already exists in the database
- [x] Ensure that users can't modify content created by other users => Users do not have the option to edit/remove content from other users, as the buttons allowing them to do so are not displayed on pages which contain content from other users and the routes are set up so that this functionality cannot be accessed by simply entering the route in the browser
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying => These can all be done via the `games/new` route, which allows for the creation of all resources and stores them in relation to OwnedGame and ArchivedGame objects
- [x] Include user input validations => Flash messages are approriately displayed when new actions are successfully executed
- [x] Display validation failures to user with error message (example form URL e.g. /posts/new) => Flash messages displayed appropriately
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
