min
===

a tiny framework that makes websites pretty

Written in LESS, compiled to CSS. Access the current beta [here](http://minfwk.com/beta.html). The "beta" page hotlinks the latest version of the Min LESS files.

To download Min, go [here](http://minfwk.com/download.html).

###Go vote on new button styles [here](https://github.com/OwenVersteeg/min/issues/6)!

###Tiny
995 bytes minified and gzipped.

###Compatible
Works with IE5 and onward. Yes, min is even responsive in IE5.

Of course, modern browsers give you pretty transitions.

###License
MIT licensed.

###Building the latest Min

WARNING! This will build the latest, pre-release version of Min. It may be broken. If you want to use an already-built Min, it's available in the file entireframework.min.css as well as through the [downloasd page](http://minfwk.com/download.html).

wget https://github.com/yui/yuicompressor/releases/download/v2.4.8/yuicompressor-2.4.8.jar
bash build.sh

###World's smallest? Really?
Min really is is the world's smallest feature complete CSS framework, at 995 bytes (or less - check the Downloads page for its current size)

When we say "feature complete" we mean that it includes the following features:
 - Buttons
 - Headings
 - Inputs
 - Navbars
 - Tables
 - Notifications
 - Icons
 - A grid system
 - Standardization of the look and feel of these elements across browsers

Without these restrictions on what's considered a "feature complete CSS framework" someone could make a CSS framework with the following code: `*{}` (the smallest piece of CSS to validate) and call it the world's smallest CSS framework. Of course, such a "framework" would literally do nothing, so in order for a piece of CSS to be considered a "framework" it should be a little more substantial (thus meeting the requirements above.)

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/OwenVersteeg/min/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
