TitleSelection-Objc
===================

An iOS app that displays a list of bad movie titles

### Step 1: Fork and clone the code base
- This project contains a working tableview and datasource.
- Make sure you understand all of the code behind it.

### Step 2: Add Delegate methods
- Set <UITableViewDelegate> as adopted in the implementation file of TitleSelectorViewController
- Remember to add self as the delegate of the tableview
- Add the didSelectRowAtIndexPath method to the implementation file of TitleSelectorViewController
- In the didSelectRowAtIndexPath method change the title of the view controller to the text of the selected row. (you can get that information from self.datasource)

### Step 3: Add DetailViewController
- Create a new UIViewController called TitleDetailViewController
- Remove the title change in the didSelectRow method
- Instantiate and push a detailViewController

### Step 4: Add a public property to the DetailViewController
- In the header file, add a string property called titleString
- Before you push the detailViewController in the didSelectRow method, set the titleString to the string from the cell selected

### Step 5: Add a label to the detail view to show what was selected
- In the detail view controller's viewDidLoad method add a UILabel
- Set the text of the label to self.titleString
