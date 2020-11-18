**<h1 align="center">iQuote</h1>**
# About the project
Quotes, you see them everywhere and the right one at the right time is just as good as a cup of coffee ☕️ . I built this project because quotes from the people I've encountered in my life and those I look up to constantly humbles and inspires me to work harder and accomplish my goals. I wanted a way to keep my favorite quotes close to me and what better way than to build a mobile app! <br>
Let's go through the User Experience, User Interface, and features of iQuote! <br> <br>
**Disclaimer** All demos below feature red oval highlight over the time. This is not part of iQuote, but indication of screen recording as deployment and testing of iQuote was executed on a physical iphone XS MAX. <br>
<br>

# Overview
## Startup and Privacy Consent
<img src="Startup_PrivacyConsent.gif" width="300" height="648.5"/>  <br>
After download and startup of iQuote, the user is greeted with the text *"work harder 🐢 "* while iQuote loads and launches its home screen. With a first download, iQuote asks for push notification permission. Allowing push notifications enables iQuote's feature that sends a quote as push notification to the device outside iQuote's environment at a user-desired time (I set my quote notification for when I wake up).  <br>
**Note:** Push notification consent is only prompted once after initial download and notification settings are configurable in device settings. <br>
<br>

## Quote of The Day
<img src="tap_to_update.gif" width="300" height="648.5"/>  <br>
When the user opens iQuote, iQuote launcnhes Quote of The Day that displays a randomly selected quote and accompanying deatils. The quote's **author, picture of author, author occupation, quote** are presented in a clean interface using VStack embedded within a NavigationView. 
- **TAP:** Want another quote? Simply ***tap*** anywhere on the screen to generate a new quote 😮 . 
- **❤️ :** ***tap*** the ❤️ to favorite the quote and save to Favorites. This feature allows user to save their favorite quotes and easily access their favorites (demo shown below). 
- **SCROLL:** Scrolling down presents the user with *"See All Quotes"* that transitions to a new View that displays all quotes. (see next section).<br>
<br>
## Quote List
<img src="quoteList.gif" width="300" height="648.5"/>  <br>
iQuote is not limited to just  Quote of The Day, it features a host of Views that allow the user to explore a multitude of quotes and interact with each one. Quote List is accessed by tapping *"See All Quotes"* on the home Quote of The Day View. This feature displays a list of quotes, with each row formatted to present a quote and its information.
- **SCROLL *UP/DOWN*:** browse quotes by scrolling up and down 
- **TAP *Quote of The Day*:** return to main View -> Quote of The Day
- **TAP:** *tap* any quote in the list to view details. <br>
<br>
## Favorites ❤️
<img src="list_favorites_unfavorite.gif" width="300" height="648.5"/>  <br>
Like many things in life such as songs, we can resonate with and become attached to quotes and revisit them many times. With iQuote, you can save those quotes you love to a *Favorites* list by simply *tapping* the ❤️ -icon that accompanies each quote. Access this *Favorites* list by going to *Quote List* and sliding the *Show Favorites Only* to view only your favorites. summary of this feature listed below:
- **❤️ :** Quote is labelled as a favorite and will be featured in *Show Favorites Only* list
- **♡ :** Quote is not labelled as a favorite and can be found in the general *Quote List*
- **Show Favorites Only:** When toggled on (green), iQuote only displays favorited quotes. When toggled off, iQuote displays all quotes.  
<br>
# Technical Details 
## Technology Overiew
- iQuote is powered by **Swift** and developed on **Xcode 12.2**
- iQuote is designed with flexibility in mind such that it is compatible with all generations of iOS devices. 

## iQuote Views Overview
- **Home.swift:** View behind Quote of The Day that is shown when user visits iQuote -> selects random quote and displays data in *VStack* embeddded within *NavigationView*. Relies on **QuoteDetail.swift**. 
- **QuoteImage.swift:** View that formats author image and adds shadowing for contrast. <br>
 <img src="image.png" width="155.6" height="319.6"/>  <br>
- **QuoteDetail.swift:** View is responsible for obtaining quote details from supporting views and presenting a complete layout.  <br>
 <img src="detail.png" width="155.6" height="319.6"/>  <br>
 - **QuoteRow.swift:** View is responisble for formatting all quote inputs into row format. This View supports **QuoteList.swift** in displaying the list of quotes <br>
  <img src="row.png" width="204" height="75.2"/>  <br>
- **QuoteList.swift:** View presents a list of all quotes when user selects *"See All Quotes"* <br>
  <img src="[list.png" width="193.5" height="397.5"/>  <br>
<br>

## Models
In conjuction to the many Views working together to provide iQuote user with a smooth and interactive interface, the data supplied to these Views are powered by robust models that processes JSON decoding, framework of iQuote data, intializes custom classes, object properties, and error handling. <br>
<br>

# Future Scope (<font size="4" color="lightblue"> *"The biggest room in the world is the room for improvement"* - Helmut Schmidt </font>)
- Design and add app icon.
- Support macOS, watchOS, iPadOS.
- Add support for fetching quote data from APIs.
- Add more user friendly feature such as background context of quote, additional information on author, SIRI dictation, etc. to improve user experience. 
