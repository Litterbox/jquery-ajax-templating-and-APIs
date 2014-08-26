# Templating with Handlebars + Advanced jQuery

What is templating?

A combination of data and layout usually used to format repeating items. We try to keep our data and presentation seperate, and templating helps us with that.

JSON data + Templating format -> Template Engine -> HTML

Example of templating - Twitter!

### Example 1 - Simple AJAX request

1. Click a button
2. Load an external txt or json file and append it to the DOM

### Example 2 -  an intro to Handlebars with AJAX

- We've now seen how it's tedious it is to append data over and over, we introduce templates

- show handlebars process
	- create your template
	- compile it
	- store the result of compiled html in a variable
	- append the DOM with the compiled html

- Do everything in one js file and include dummy data

### Example 3 -  simple intro to promises in jquery

- Have the students try to fade out three boxes then add the promise challenge
- show how promises work

### Example 4 -  AJAX and OMDB on Rails

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

### Example 5 -  Server side API calls using Typhoeus

### Example 6 -  If there is time....creating your own API and rendering JSON
