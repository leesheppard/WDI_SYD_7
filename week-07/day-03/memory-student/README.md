#Title: Memory Game

###Type:
- Lab

###Summary
Create a memory game with jQuery
* Memory is a card game in which all of the cards are laid face down on a surface.
* Two cards may be revealed at a time.
* The object of the game is to turn over pairs of matching cards.

###Estimated Time:
- 2-3 hours or homework

###Prerequisites:
- HTML/CSS
- JavaScript
- jQuery selectors & events

###Objectives:
* Practice using jQuery DOM manipulation
* Pratice using jQuery Events
* Create a timer

###Activity:
Go over with students what memory is, and demonstrate the working obfuscated version. Give them the starter code and have them try to implement the game.

### To do:
* Get the game to populate the DOM with 10 cards when the "small" button is clicked.
* Make sure each card is assigned a unique ID so it can be mapped to a letter.
* Implement click functionality so that when a player clicks on the card, it reveals the letter.
* Add logic that compares the cards to try to find a match
* Make sure if you click the same card twice it doesn't mistakenly think it is a match!
* Add styling for "found", "won", and "hover"
* Give the player the option to play a game that is small, medium or large.
* Add a game timer. It should stop when the player wins.

### Bonus:
* How can you programatically create the letter arrays?
* Are there ways to refactor your code to make it DRYer?
* Animate the cards when they are flipped over.
* Can you implement the memory game with images instead of letters?

### Instructor Notes:
* Alternate Implementation: [Dwayne's memory](https://github.com/pointpointclick/WDI-memory)
* For starter code, consider giving students just the HTML & CSS or have them build it from scratch. Having starter code helps isolate practicing the JS, but forces an architecture onto the students which they sometime struggle with.

###Post-mortem:
- What worked?
- Student misunderstandings?