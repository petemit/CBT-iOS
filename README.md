# CBT

This app is a work in progress. 


This is a simple Cognitive Behavioral Therapy questionnaire that I hope to be intuitive and simple to use.  

The feature set I'm aiming for:
* A questionnaire prompting the user to explain a difficult situation and allowing the user to complete a CBT exercise, including identifying cognitive distortions and thoughts and emotions
* Allowing the user to compare previous responses for convenience
* A summary page that shows the before and after emotions and thoughts for a particular log
* The option to store logs locally on device and be able to retrieve them as desired 
 
 
This is my first iOS app. I wanted to use this project as a way to push myself and learn the platform.  

## Design Decisions

Since this is my first iOS app, this probably won't have the latest and greatest design patterns or libraries.  

* I am not going to do dependency injection.  There are a few places where I think DI would have made things a little cleaner, but I think I'll just try and keep it simple for my own brain this time around.

* I plan to share the state of the log via a `LogController` as an `ObserveableObject`.  Passing an object back and forth between the Views seemed silly, and I wanted the ability to go back and forth between screens and edit the same state.  
* I'm going to use `SwiftUi` because it's cool and I'd like to get better at declarative UI

