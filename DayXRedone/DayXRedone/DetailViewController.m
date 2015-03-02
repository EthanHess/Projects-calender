//
//  DetailViewController.m
//  DayXRedone
//
//  Created by Ethan Hess on 2/12/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController () <UITextFieldDelegate, UITextViewDelegate, UITableViewDelegate>

@property (nonatomic, strong) Entry *entry;

@property (nonatomic, strong) IBOutlet UITextField *textField;
@property (nonatomic, strong) IBOutlet UITextView *textView;
@property (nonatomic, strong) IBOutlet UIButton *clearButton;
@property (nonatomic, strong) IBOutlet UIButton *saveButton;
@property (nonatomic, strong) IBOutlet UILabel *enterTitleLabel;
@property (nonatomic, strong) IBOutlet UILabel *enterJournalEntry;

@end

@implementation DetailViewController

- (void)updateWithEntry:(Entry *)entry {
    self.entry = entry;
    
    self.textField.text = entry.title;
    self.textView.text = entry.text;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textField.delegate = self;
    self.textView.delegate = self;
    self.textField.text = self.entry.title;
    self.textView.text = self.entry.text;
    
    UIBarButtonItem *saveButton = [[UIBarButtonItem alloc]initWithTitle:@"Save" style:UIBarButtonItemStylePlain target:self action:@selector(saveEntries:)];
    self.navigationItem.rightBarButtonItem = saveButton;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    return YES;
    
}


- (IBAction)clearAll:(id)sender {
    
    self.textField.text = @"";
    self.textView.text = @"";
    
}


- (IBAction)saveEntries:(id)sender {
    
    Entry *entry = [[Entry alloc]initWithDictionary:@{titleKey: self.textField.text, textKey: self.textView.text}];
    
    if (self.entry) {
        [[EntryController sharedInstance] replaceEntry:self.entry withEntry:entry];
    }
    else {
        [[EntryController sharedInstance] addEntry:entry];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
