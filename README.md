Filterrific Demo App (Rails 4.1 branch)
=======================================

This is a demo Rails app for the Filterrific gem.

* [Live demo](http://filterrific-demo.herokuapp.com)
* [Filterrific documentation](http://filterrific.clearcove.ca)

It is also used for integration testing of Filterrific into different versions
of Rails. I prefer testing Rails Engines in a separate app rather than the dummy
app inside the Engine gem.

### How to run the app

1. Clone this repo.
2. Satisfy RVM if you use it.
3. Run `bundle install`
4. Create a DB named `filterrific_demo_development`. Update database.yml if you don't use PostgreSQL.
5. Run the migrations with `rake db:migrate`. This will set up the schema and populate demo data.
6. Start the web server and browse the app.
7. Happy filtering!

### Copyright

Copyright (c) 2010 - 2015 Jo Hund. (MIT) LICENSE
