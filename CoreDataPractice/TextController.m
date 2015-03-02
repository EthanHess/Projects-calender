//
//  TextController.m
//  CoreDataPractice
//
//  Created by Ethan Hess on 2/27/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "TextController.h"

@implementation TextController

+ (TextController *)sharedInstance {
    static TextController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [TextController new];
    });
    
    return sharedInstance;
    
    
}

- (NSArray *)textEntries {
    
    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"TextView"];
    
    NSArray *textEntries = [[CoreDataHelper sharedInstance].managedObjectContext executeFetchRequest:fetchRequest error:NULL];
                      
    return textEntries;
    
}

- (TextView *)createTextView:(NSString *)text {
    
    TextView *textView = [NSEntityDescription insertNewObjectForEntityForName:@"TextView" inManagedObjectContext:[CoreDataHelper sharedInstance].managedObjectContext];
    
    textView.text = text;
    
    [self save];

    return textView;
    
}

- (void)removeTextEntry:(TextView *)textView {
    
    if (!textView) {
        return;
    }
    
    [textView.managedObjectContext deleteObject:textView];
    
    [self save];
    
}

- (void)save {
    
    [[CoreDataHelper sharedInstance]save]; 
    
}

@end
