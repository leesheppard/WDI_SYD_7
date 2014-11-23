Week 02, Day 03
===============
### 19 / 11 / 2014

WHAT WE COVERED
---------------

* [Morning Exercise](https://gist.github.com/FluffyJack/161e1717fff648b73b56)
* Intro to HTML5 Forms
* Sizing, Units and Colors
* Box Model
* Floats and Clears

DETAILS
-------

#### HTML Forms

A form is exactly what you think it is.  It (meaning the form tag) looks like this though:

```ruby
<form action="/route" method="POST">
</form>
```

The action is the URL that you are asking to send the data to, and the method is what style of request you are making (i.e. GET, POST, PUT etc.).  Remember that by default - a form will have a method of GET.

When using a post, the name attribute on inputs etc. is what defines the params hash.

This is an empty form - so it doesn't do anything.  To get the data, we use things like:

###### Input

At it's most basic - it looks like this...
```html
<input />
```

But it can have an HTML attributes.  This is what makes it a little bit more fun.
Common attributes include:
* type
* autofocus (only put this on one input!  On page load, it will be ready to type in that field - **<input type="text" autofocus>**)
* disabled (this doesn't need a value - **<input type="text" disabled>)
* **name** (this is really important - this is the key that is sent to the defined URL - as params)
* id
* class

```html
<input type="text" autofocus name="text"> <!-- This is the default -->
<input type="color" disabled name="color"> <!-- Makes a color picker -->
<input type="password" name="password"> <!-- Same as a normal text field, except you can't read the characters -->
<!-- Common types include: checkbox, color, date, datetime, datetime-local, email, number, password, radio, range, text, url etc. --> 
```

###### Select, Optgroup and Option

Select is the tag name for a drop down.  This is the parent element!  The elements that can go within it (i.e. the children) are optgroup and options.

```html
<select name="select">
  <optgroup label="Values"> <!-- Optgroups aren't necessary -->
    <option value="value1">Value 1</option> 
    <option value="value2">Value 2</option>
    <option value="value3">Value 3</option>
  </optgroup>
</select>
```

Again, you can use a bunch of attributes:
* **name** - This, again, is sent to the server as params.  
* **label** - This goes on the optgroup - it is the optgroup heading.
* **multiple** - This goes onto the select and allows you to select multiple things. If you are using this, make sure the name on the "select" is based on this format = "select[]" (i.e. make an array of these values for params )
* **selected** - This goes onto selects

###### Label

These represent a particular input (or any other part of a form).  The person of them is to label something (which could easily be done using the placeholder attribute - except browser compatibility etc.).

To make sure they work as best as possible, make sure that the for attribute aligns with the id attribute on the assosciated input:

```html
<label for="whatever"></label>
<input type="text" id="whatever">
```

#### Sizing, Units and Colors

Lots of ways to size things in CSS, best to stick to px, percentage, em, rem, vh, and vw but here they all are:
* px - equivalent to one screen pixel (but not necessarily 1 device pixel - i.e. retina screens - normally they work it out well though)
* % - Take N% of the nearest parent.  Width's will always work (unless width is auto), height's need to be defined for any percentage to work
* em - At it's most basic, it refers to the base font size - i.e. a relative unit.  Though this can get messy, it will take it's nearest font size. Ask me about this one if you are remotely interested because it gets loony.  Based on one "m"
* rem - Relative EM's - always refer to the HTML's font size.
* vw - Viewport Width - i.e. relative to the browser window's width
* vh - Viewport Height
* vmin - The smallest value of vh and vw
* vmax - The largest value of vh and vw
* **Don't use any of the following!!!** 
* ex - Refers to the x height of the font's lowercase letters
* ch - Represents the width of the character "0"
* mm - One millimeter - but this doesn't actually work.  It is hard coded so that 25.4mm is equal to 96px - retina screens this freaks
* cm - 10mm - just as broken as mm
* in - One inch - this is always 96px as well, broken
* pt - 1/72 of an inch - broken, to worsen the fact - 3pt is always 4px
* pc - 12 points 

To check out em's - look at this [link!!!](http://codepen.io/anon/pen/pvvyXx).  Definitely worth doing - and change the input on the top right!

###### CSS Colours

**COLOR NAMES**
Pretty straightforward - just the names of colors.  My favourites include: hotpink, gainsboro, papayawhip and lightgoldenrodyellow

[Look here for an exhaustive list of stuff you don't need to remember.](http://www.w3schools.com/cssref/css_colornames.asp)

**HEXADECIMAL**
Made with a #RRGGBB - each character is something between 0 - F.  So, each pair (i.e. red, green and blue) is a range from 0 - 255.
Common hex:
* #FFFFFF - is white
* #000000 - is black
* #FF0000 - is red
* #00FF00 - is green
* #0000FF - is blue

**RGB COLORS**
Same as above, values between 0 and 255 for red, green and blue.
Looks like this: rgb(0, 0, 0);

**RGBA COLORS**
Same as above except adds an alpha channel (a number between 0 and 1 - this gives transparency)
Looks like this: rgb(255, 124, 178, 0.6);

**HSL COLORS**
Hue, Saturation and Lightness.  Hue is a number from 0 - 360 (a point on a color wheel), Saturation is a percentage (0% is a shade of gray, 100% is fully fledged rave town), and Lightness is also a percentage (ranging from 0% - black - to 100% - white).
Looks like this: hsla(280, 40%, 35%);

**HSLA COLORS**
Adds an alpha channel yet again.  Looks like this - hsla(242, 72%, 94%, 0.4);

#### BOX MODEL

Arghhhhh, this is going to be hard to explain.

All HTML elements when placed on the page are boxes.  Those boxes are made up of a bunch of different parts:
* The Content
* The Padding
* The Border
* The Margin

If we define a width on HTML elements (and beware - this can't be done on display: inline elements such as 'a', 'span' etc.), that can be altered by adding padding and border.

A div on the page gets given a width of 300px, padding of 20px on the left and right, and a border of 10px.  The div doesn't have a width of 300px - it is actually equal to 360px.  This sucks!  This means that % etc. aren't real values.  

This is obviously horrible, but there are solutions.  The most common one is the following chunk of code (this goes at the very top of the CSS file - I would never start a project without these lines):

```css
*, *:before, *:after {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  -ms-box-sizing: border-box;
  -o-box-sizing: border-box;
  box-sizing: border-box;
}
```

**Traditionally, the box model states that padding and border aren't included in the width.**  The piece of above code means that they are.  Use this at the top of every project!

A [link (read this one)](https://developer.mozilla.org/en-US/docs/Web/CSS/box_model), another [link](http://www.w3schools.com/css/css_boxmodel.asp) and a final [link](http://blog.teamtreehouse.com/box-sizing-secret-simple-css-layouts)

#### Floats and Clears

This is one of the most difficult things in CSS.  [Read this first](http://css-tricks.com/all-about-floats/), then [this](http://www.smashingmagazine.com/2009/10/19/the-mystery-of-css-float-property/).

It is very useful for CSS layouting but can throw a lot of errors.  You can float things left, right or none. 

When you float an element is brings it out of the traditional DOM (Document Object Model) flow, which means that elements that aren't floated will not pay any attention to them - and the parent (if all elements are floated) will have a height of zero - this is called parental collapse. [This Codepen demonstrates this](http://codepen.io/anon/pen/RNNzVV). We need to deal with this and there a bunch of ways to do this, but they all use float's sister property clear.  You must clear floats in some way or another!  If you really want to figure out clearing floats - [check out this link](http://www.positioniseverything.net/easyclearing.html)

There are three main solutions.

**1. Clear: Both;**

At the point where you want elements to stop floating - you can apply clear: both (this effects everything from then on).  [This Pen illustrates it.](http://codepen.io/anon/pen/bNNPWM?editors=110)

Often this is a done with an empty div - i.e. <div class="clear"></div> which, in the CSS, has a styling of clear: both;  I like this method.

**2. Overflow: Auto; or Overflow: Hidden;**

If there are only floated elements in a parent.  You can apply either of those above properties and it will force the parent to pay attention to floated elements - i.e. fix parental collapse.  This one isn't regularly used.  Try and be flexible and prepare for non-floated elements as well - all elements that aren't floated in here will still ignore the floated elements.

[This Codepen shows it.](http://codepen.io/anon/pen/EaaBwa)

**3. Clearfix**

This is done with the pseudo-element :after - which is a way to insert content with CSS.  I am not a fan of this solution but it works in the same way as overflow.  You apply the class clearfix to any parent element with floated elements in it - and reference the following CSS in your CSS file.  

[This Codepen shows it.](http://codepen.io/anon/pen/myyZMM)

```css
.clearfix:after { 
  content: "."; 
  visibility: hidden; 
  display: block; 
  height: 0; 
  clear: both;
}
```