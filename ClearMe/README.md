ClearMe
=======

A simple iOS app with a TextView and a button that clears it.

###Step 1: Create the ViewController
- Create a new file
  - TextViewController
  - Subclass of UIViewController
  - select “Also create XIB file”
- Import the class in the appdelegate, set the viewcontroller in a navigationcontroller as the rootviewcontroller of the window. (we’ve done this 10 times, you should have this down)

###Step 2: Add a TextView
- Add a textView property (IBOutlet) to the viewController
- Add a textView to the view in the XIB file
- Wire the textView to the viewController’s property
- Set the text of the textView in the viewDidLoad method to something clever.

###Step 3: Add a Button
- Add a buttonTapped:(id)sender method to the viewController
- In the buttonTapped: method, set the textView’s text to empty (@””)
- Add a button to the view in the XIB file (set the title to “Clear Me”)
- Wire the button’s touchUpInside to the buttonTapped: method

