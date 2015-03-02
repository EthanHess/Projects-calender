//
//  PlayerController.m
//  ScoreCoreDataTwo
//
//  Created by Ethan Hess on 2/28/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "PlayerController.h"


@implementation PlayerController

+ (PlayerController *)sharedInstance {
    static PlayerController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [PlayerController new];
    });
    
    return sharedInstance;
    
}

- (NSArray *)players {
    
    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"Player"];
    
    NSArray *players = [[CoreDataHelper sharedInstance].managedObjectContext executeFetchRequest:fetchRequest error:NULL];
    
    return players;
    
}

- (Player *)createWithName {
    
    Player *player = [NSEntityDescription insertNewObjectForEntityForName:@"Player" inManagedObjectContext:[CoreDataHelper sharedInstance].managedObjectContext];
    
    player.name = @"";
    player.score = @" 0 ";
    
    [self save];
    
    return player;
    
}

- (void)removePlayer:(Player *)player {
    
    if (!player) {
        return;
    }
    
    [player.managedObjectContext deleteObject:player];
    
    [self save]; 
    
}

- (void)save {
    
    [[CoreDataHelper sharedInstance] save];
    
}







@end
