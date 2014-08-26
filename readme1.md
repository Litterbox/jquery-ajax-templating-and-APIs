# AJAX & Templates

## Overview

### Intro to AJAX

Asynchronous Javascript and XML

"With AJAX, web applications can send data to, and retrieve data from,
a server asynchronously (in the background) without interfering with
the display and behavior of the existing page" -
[Wikipedia](http://en.wikipedia.org/wiki/Ajax_\(programming\))

In pure JavaScript - [XMLHttpRequest object](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest)

With jQuery - [$.ajax()](http://api.jquery.com/jquery.ajax/), [$.get()](http://api.jquery.com/jquery.get/), [$.post()](http://api.jquery.com/jquery.post/), [$.getJSON()](http://api.jquery.com/jquery.getjson/)

### Intro to (Client-side) Templating

In Ruby we've seen .erb templates. In Node we saw .ejs templates. Now
we'll look at templating libraries for the client-side (i.e., browser).

#### Articles
- [Smashing Magazine](http://www.smashingmagazine.com/2012/12/05/client-side-templating/)
- [Wikipedia](http://en.wikipedia.org/wiki/JavaScript_templating)

#### Libraries
- [Underscore.template](http://documentcloud.github.io/underscore/#template)
- [Mustache](http://mustache.github.io/)
- [Handlebars](http://handlebarsjs.com/)

### Example w/ $.ajax & Handlebars

        $.ajax("", );

## Side Topics

### JSONP (Same-Origin Policy)

JSONP allows you to make a request from one site for JSON data from
another site.

[Same-Origin Policy](http://en.wikipedia.org/wiki/Same-origin_policy)

### Promises

## Example w/ OMDB API in Rails App

## Server-Side

### Typhoeus

### Rails JSON API
