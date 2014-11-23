Week 02, Day 02
===============
### 18 / 11 / 2014

WHAT WE COVERED
---------------

* [Morning Exercise](https://gist.github.com/FluffyJack/161e1717fff648b73b56)
* Intro to HTML
* Intro to CSS
* [Homework - Student Profiles with Sinatra, HTML and CSS](https://gist.github.com/FluffyJack/4165b7b88e6902275f5e)


DETAILS
-------

#### Intro to HTML (**H**yper **T**ext **M**arkup **L**anguage - currently at version 5 - HTML5)

Without HTML - there is no webpages.  The provide the bones or structure for every single site on the web.  The file extension is .html and the root file of a domain is almost always called index.html.

###### HTML describes the Structure of Pages

It uses elements to describe this structure.  Each element is comprised of an opening and a closing tag.  These tags serve as containers - they tell you something about the information that lies between their opening and closing tags.  Think of them as definitions - this is the main heading (h1) or this is a paragraph (p).

Tags look like the following:
```html
<p> Content goes in here </p>
```
Every tag has the left-angle and right-angle brackets, and on the closing tag - the less-than sign is suffixed by a forward slash.  The characters in between the angle brackets describe what type of content this is.  Often element and tag are used interchangeably - but an element includes the content, whereas a tag is just the things encompassed by the angle brackets.

**Attributes tell us more about elements**

Attributes provide more information about the contents of an element.  They appear on the opening tag of an element and consist of a key and a value, separated by an equals sign.

```html
<p lang=“fr”>Paragraphe en Français</p>
```

This does exactly what you think - it tells the browser that this particular paragraph is in French.  The attribute name tells the browser what kind of extra information you are providing, and the value is actual information.

**What do you need for a valid HTML page?**

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
</head>
<body>
  
</body>
</html>
```

The first line - the DOCTYPE defines the document as HTML5.  
The second line begins the HTML page and defines the base language.
The “head” element is the place where all of your metadata goes (the invisible stuff - such as links to CSS etc.)
The meta charset determines the character encoding
The title is the tab name
ALL CONTENT YOU WANT TO BE VISIBLE goes into the body tag
And then we need to close off the html tag

##### Text HTML Elements

**Headings**

- <h1></h1> (Main Headings)
- <h2></h2> (Subheadings)
- <h3></h3> (Smaller Section Subheadings)
- <h4></h4> (and so on…)
- <h5></h5>
- <h6></h6>

**Paragraphs**

- <p></p>

**Bold and Italic**

- <b></b> (bold)
- <i></i> (italic)

**Superscript and Subscript**

- <sup></sup> (superscript)
- <sub></sub> (subscript)

**Line breaks and Horizontal Rules**

- <br /> (line break)
- <hr /> (horizontal rule)

**Strong and Emphasis**

- <strong></strong> (strong importance - looks the same as bold)
- <em></em> (emphasised words - looks the same as italic)

**Quotations**

- <blockquote></blockquote> (Used for quotes that are a paragraph or more long)
- <q></q> (Used for short quotes>

**Abbreviations**

- <abbr title=“Professor>Prof.</abbr> (This needs a title attribute to explain what the abbreviation actually means)

**Citations and Definitions**

- <cite></cite> (When you are referencing a work)
- <dfn></dfn> (When you explain some new terminology or a new concept)

**Author Details**

- <address></address> (Used only for the contact details for the author of the page)

**Changes to Content**

- <ins></ins> and <del></del> (Insert shows text that has been inserted, while deleted shows text that was removed)
- <s></s> (Shows text that is no longer accurate or relevant - puts a strike through it)

##### Lists

**Ordered Lists**

The ordered list is created with an <ol> tag, then it is filled with list items (<li>)

```html
<ol>
	<li></li>
	<li></li>
</ol>
```

**Unordered Lists**

Same as above except instead of having <ol> as the parent, it is <ul>

```html
<ul>
	<li></li>
	<li></li>
</ul>
```

**Definition Lists**

Made up of three tags:
- <dl></dl> - this is what creates the definition list
- <dt></dt> - this is what contains the term being defined
- <dd></dd> - this is what contains the definition

It ends up looking like the following:
```html
<dl>
	<dt>Coding</dt>
	<dd>Is my lifeblood!</dd>
</dl>
```

**Nested Lists**

Obviously, you can have lists within lists.

```html
<ul>
	<li>
		<ul>
			<li></li>
		</ul>
	</li>
</ul>
```

##### Links

These are the defining features of the web.  You can use them to:
- Link from one website to another
- Link from one page to another on the same website
- Link from one part of a web page to another part of the same page
- Open a link in a new browser window or tab
- To start up your email program and address a new email to someone

It looks like the following:

```html
<a href=“http://www.stabmag.com”>Stab Magazine</a>
```

The href attribute is what defines where this link will take us, and the content within the a tags gives us the clickable thing.  This doesn’t have to be just text!

- Linking to other sites is done with the URL
- 	<a href=“http://www.stabmag.com”>Stab Magazine</a>
- Linking to other pages on the same site is done by referencing the desired html file
- 	<a href=“about-me.html”>About Me</a>
- Email links
- 	<a href=“mailto:myemail@gmail.com”>Email Me!</a>
- Opening links in a new window
- 	<a href=“index.html” target=“_blank”>Stab Magazine</a>
- Linking to a specific part of a page
- 	If there is an element with a specific “id” attribute, we can link to that by suffixing the URL with the hash sign and then the name of that id
- 	<a href=“index.html#portfolio”>Stab Magazine</a>

##### Images

To add an image, we use the <img> tag.  It is an empty element so it can be self closing and looks like the following:

```html
<img src=“” alt=“” title=“” />
```

The src defines where the image is coming from - this can reference a local file, or an image from another domain.  

The alt defines the alternate text to load if this image doesn’t make it to the page.

The title defines the tooltip that shows up when hovering over this particular image.

If you would like to caption an image, it is done using the <figure> tag and the <figcaption> tag.  It looks like the following:

```html
<figure>
	<img src=“” alt=“” title=“” />
	<figcaption>Yadda yadda yadda</figcaption>
</figure>
```

Save the images in the right way!

.jpg or .jpeg for photos
.gif, .svg or .png for logos or things that require transparency.  I love svg’s because they are scalable.

Don’t include the highest resolution possible - try to make the image an appropriate size.

##### Tables

Made up of a bunch of different elements - but tables aren’t regularly used:
- <table></table> 
- <tr></tr> (Table row)
- <td></td> (Table data)
- <th></th> (Table heading)
- <thead></thead> (the headings of the table)
- <tbody></tbody> (the body of the table)
- <tfoot></tfoot> (the footer of the table)

Ends up looking like the following:
```html
<table>
	<tr>
		<th>Year</th>
		<th>Model</th>
		<th>Brand</th>
	</tr>
	<tr>
		<td>Jaguar</td>
		<td>E-Type</td>
		<td>1961</td>
	</tr>
</table>
```

**Spanning Columns**

On a td we can give the attribute, colspan.  It looks like the following:

<td colspan=“2”></td> - this will make it two columns wide

**Spanning Rows**

Just the same as above:

<td rowspan=“2”></td>

**More Intense Tables**

May look like this:

```html
<table>
  <thead>
    <tr>
      <th>Date</th>
      <th>Incomings</th>
      <th>Outgoings</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>5<sup>th</sup> of September</th>
      <td>$5000</td>
      <td>$4000</td>
    </tr>
    <tr>
      <th>6<sup>th</sup> of September</th>
      <td>$2000</td>
      <td>$3000</td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
      <td></td>
      <td>$7000</td>
      <td>$7000</td>
    </tr>
  </tfoot>
</table>
```

























