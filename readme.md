# Templating with Handlebars + Advanced jQuery

What is templating?

A combination of data and layout usually used to format repeating items. We try to keep our data and presentation seperate, and templating helps us with that.

JSON data + Templating format -> Template Engine -> HTML

Example of templating - Twitter!

### Example 1 -  an intro to Handlebars

- show handlebars process
	- create your template
	- compile it
	- store the result of compiled html in a variable
	- append the DOM with the compiled html

- Do everything in one js file and include dummy data

### Example 2 -  simple intro to promises in jquery
- show how promises work

### Example 3 -  AJAX and OMDB 

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

### Example 4 -  Server side API calls using Typhoeus

### Example 5 -  Creating your own API 

### Templating on the client side is expensive - good resource
https://www.youtube.com/watch?v=ehP1vMq_BX8
