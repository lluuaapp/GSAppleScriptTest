### PLATFORM AND VERSION

Mac OS X 10.10.x and 10.11

### DESCRIPTION OF PROBLEM

We are trying to make our application GarageSale scriptable. The application can start listings on eBay. Mainly it contains listings which should be accessible through AppleScript. The user can select the listings in an outline view. These "selected ebay listings" should be accessible through AppleScrip, too.

So we want to be able to get an array of all listings/Cocoa-objects and an array of only a subset of this array (the selected listings in the example app). All listings are declared as elements in the sdef, the selected listings are declared as a read-only property.

We get the following error whenever we access a Cocoa-object within the subset:

 	Can't make item 1 of selected ebay listings into type specifier." number -1700 from item 1 of selected ebay listings to specifier

We think this is either an issue in our sdef, an issue with our class hierarchy or an issue with our script identifiers.

### STEPS TO REPRODUCE

We have created a small example project which you can clone from this git repository:

https://github.com/lluuaapp/GSAppleScriptTest

Please compile the app and execute the AppleScript "Test.scpt".

### APP NAME AND ID IN APP STORE

GarageSale, 402412861