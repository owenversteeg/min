###PLEASE go vote on new button styles [here](https://github.com/OwenVersteeg/min/issues/6)!

min
===

a tiny framework that makes websites pretty

Written in LESS and Sass, compiled to CSS. Access the current beta [here](http://minfwk.com/beta.html). The "beta" page hotlinks the latest version of the Min LESS files.

To download Min, go [here](http://minfwk.com/download.html).

###Tiny
995 bytes minified and gzipped.

###Compatible
Works with IE5 and onward. Yes, min is even responsive in IE5.

Of course, modern browsers give you pretty transitions.

###License
MIT licensed.

###Contributing

We encourage you to contribute anything you can to Min. If you have an idea for a new feature, open a new issue with the Enhancement tag.

To contribute code:

1. Fork Min.
2. At this point, you can choose between editing the Sass files in the `sass` folder or the LESS files in the `less` folder. Feel free to edit one but ignore the other; [Scott O'Hara](https://github.com/scottaohara), the Sass version maintainer, will translate your changes to Sass from LESS or vice versa.
3. Make sure that your pull request will not bring Min's total size above 995 bytes minified and gzipped.
4. Make a pull request with your changes. In your pull request, you MUST:
 - State the size of the entire Min framework before AND after your changes (run build.sh on your changed files, gzip entireframework.min.css and measure its size)
 - Say why you made these changes
 - Describe any possible issues with the changes, or reasons why they might not be merged
 - If your changes affect Min's appearance, take screenshots of the affected Min; if you can, include multiple browsers using [Browserstack](http://www.browserstack.com/screenshots).
5. Finally, remember:
 - The :star2: special files :star2: are only updated by the project founder, Owen Versteeg, and they are only updated after extensive compatibility, size, and bug testing. They are built by the `build.sh` file. NEVER MODIFY ANY OF THE :star2: special files :star2:, which are:
   - CNAME
    - compiledcss.js
    - entireframework.min.css
    - mingziphotlink.php
 - Min uses tabs, all lowercase, and proper spacing. If your PR contains wacky spacing changes it'll probably be rejected.
 - Don't skimp on spaces to save space; the YUI compressor does this automatically at build time.
 - Contributing to Min is highly encouraged. Don't be shy!

###Building the latest Min

WARNING! This will build the latest, pre-release version of Min. It may be broken. If you want to use an already-built Min, it's available in the file entireframework.min.css as well as through the [downloads page](http://minfwk.com/download.html).

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
