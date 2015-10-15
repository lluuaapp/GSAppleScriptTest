### PLATFORM AND VERSION

Mac OS X 10.10.x and 10.11

### DESCRIPTION OF PROBLEM

We have rewritten one of our older OS X applications from scratch, and are now facing problems getting the AppleScript interaction to work.

The application is dealing with objects of type "GSEbayListing". We are exposing the all "ebay listings" array and "selected ebay listings" array through AppleScript. 

All listings is declared as elements in the application's sdef file, the selected listings are declared as a read-only property.

An error is retuned whenever one tries to access an element from the "selected ebay listings" property in AppleScript like this:

tell application "GSAppleScriptTest"
    repeat with theListing in selected ebay listings		log (class of theListing)		log title of theListing as string	end repeatend tell

The returned error is:

 	Can't make item 1 of selected ebay listings into type specifier." number -1700 from item 1 of selected ebay listings to specifier

We think this is either an issue in our sdef, an issue with our class hierarchy or an issue with our script identifiers.

### STEPS TO REPRODUCE

We have created a small example project to demonstrate the problem and put it on GitHub:

https://github.com/lluuaapp/GSAppleScriptTest

Please compile the app and execute the AppleScript "Test.scpt".

### APP NAME AND ID IN APP STORE

GarageSale, 402412861