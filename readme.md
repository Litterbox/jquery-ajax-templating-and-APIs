# Templating with Handlebars + Advanced jQuery

What is templating?

A combination of data and layout usually used to format repeating items. We try to keep our data and presentation seperate, and templating helps us with that.

JSON data + Templating format -> Template Engine -> HTML

Example of templating - Twitter!

### Example 1 - templating with jQuery

- Do a sample template with jquery using each

- Why do we need templating
	- our replace method is a bit janky, there are lots of things jQuery does well, but templating is not one of them - let's use a templating library to do this. We're going to be using handlebars.

### Example 2 -  an intro to Handlebars

- show handlebars process
	- create your template
	- compile it
	- store the result of compiled html in a variable
	- append the DOM with the compiled html

- Do everything in one js file and include dummy data

### Example 3 -  simple intro to promises in jquery
- show how promises work

### Example 4 -  introducing deferreds in jquery
- show how deferreds work in jquery

### Example 5 -  promises and deferreds with OMDB
- show how deferreds work in jquery

### Example 6 -  connecting Handlebars, Promises and OMDB to a Rails app
- put everything other

- gem install handlebars_assets
- create a folder called `templates` in your javascripts file
- add the required assets in application.js

```
//= require handlebars.runtime
//= require_tree ./templates
```
- create a folder in the templates folder for each controller and then include your `.hbs` files in the respective folders
- back in your application.js, write a function to render the pre-compiled templates
- rake assets:precompile


### Templating on the client side is expensive - good resource
https://www.youtube.com/watch?v=ehP1vMq_BX8
