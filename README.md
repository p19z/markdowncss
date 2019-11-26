<link type="text/css" rel="stylesheet"
href="https://p19z.github.io/markdowncss/markdown.css"/>


# Pretty markdown stylesheets

Markdown.css is better default styling for your Markdown files. It was
originally inspired by the "Space" WordPress theme. This page is itself
a Markdown file using the `markdown.css` stylesheet. View the source
code [here](https://raw.github.com/p19z/markdowncss/master/README.md).


<!-- Below, include "Sample files", "Getting started", and "History" -->


### Sample files

#### Sample files using CSS version 1

View a sample file that implements most of the Markdown spec:

* [as HTML via jsdelivr.net](https://cdn.jsdelivr.net/gh/p19z/markdowncss@master/examples/ex1+ref1.0.html)
* [as HTML via github.io](http://p19z.github.io/markdowncss/examples/ex1+ref1.0.html)
* [as raw markdown](https://raw.github.com/p19z/markdowncss/master/examples/ex1+ref1.0.md)


#### Sample file using staging CSS version

View a sample file that implements most of the Markdown spec and uses
the staging version of the style sheet:

* [as HTML via github.io](http://p19z.github.io/markdowncss/examples/ex1+staging.html)


### Getting started

Just add the following line to the top of your
`.md`, `.mdx`, `.text` or `.markdown` files:

    <link type="text/css" rel="stylesheet"
    href="https://p19z.github.io/markdowncss/markdown.css"/>

Experimental stylesheet can be included through:

    <link type="text/css" rel="stylesheet"
    href="https://p19z.github.io/markdowncss/markdown-staging.css"/>

Older versions are available in the "legacy" directory:

    <link type="text/css" rel="stylesheet"
    href="https://p19z.github.io/markdowncss/legacy/md-1.0.0.0.css"/>


##### Note: explicit closing tag

Depending on your framework and final rendering engine, for the markdown
to parse correctly, you might need to add an explicit closing `</link>`
tag. This is not technically correct HTML, but might be a workaround if
you experience problems with the `<link>` tag on its own.


#### Alternative content delivery

Instead of using `github.io` and the master branch, we should be able to
include the stylesheet **from another branch**, using `jsdelivr.net`,
like this:

    <link type="text/css" rel="stylesheet"
    href="https://cdn.jsdelivr.net/gh/p19z/markdowncss@BRCHNAME/markdown.css"/>


### History

* SEP 20, 2012 - Copied from Kevin Burke's project <http://bitbucket.org/kevinburke/markdowncss>.
* NOV 25, 2019 - Updated URLs, switch to using <https://github.com/p19z/markdowncss>,
and change link to use <https://p19z.github.io/markdowncss/markdown.css>
otherwise we can't load the CSS file due to MIME-type errors.
Using `github.io` or `jsdelivr.net` as a proxy,
instead of directly accessing the raw content on Github,
prevents the following error:
> The resource from “https://raw.github.com/p19z/markdowncss/master/markdown.css”
> was blocked due to MIME type (“text/plain”) mismatch (X-Content-Type-Options: nosniff).
* NOV 26, 2019 - Use "text-align: justify" on paragraphs. markdowncss-v1.1.0.0.
