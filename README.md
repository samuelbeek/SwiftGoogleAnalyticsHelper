# SwiftGoogleAnalyticsHelper
Google Analytics Helper for Swift

## Installation 
Make sure you've added Google Analytics to your project, use the installation information they providde. 

## Usage

### Track Screen
add this to the viewDidAppear() of a ViewController you'd like to track

    setScreenName(name: "name of your view");
    
### Track Event
add this within the function of your event. 

    trackEvent("your category", action: "your action", label: "your label", value: nil)

### Set Tracked User
add this to your application didFinishLaunchingWithOptions 

    setTrackedUserID("your id")
   
## License 
You can use this for what ever you want. 

follow me on [twitter]("twitter.com/samuelbeek")
