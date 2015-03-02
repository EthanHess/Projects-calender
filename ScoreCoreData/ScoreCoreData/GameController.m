//
//  GameController.m
//  ScoreCoreData
//
//  Created by Ethan Hess on 2/25/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "GameController.h"

@interface GameController ()

@property (nonatomic, strong) NSArray *players;

@end

@implementation GameController

+ (GameController *)sharedInstance {
    static GameController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [GameController new];
    });
    
    return sharedInstance;
    
}

- (NSArray *)players {
    
    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"Game"];
    
    NSArray *players = [[CoreDataHelper sharedInstance].managedObjectContext executeFetchRequest:fetchRequest error:NULL];
    
  
    return players;
}

- (Game *)createPlayerCell:(NSString *)player {
    
    Game *game = [NSEntityDescription insertNewObjectForEntityForName:@"Game" inManagedObjectContext:[CoreDataHelper sharedInstance].managedObjectContext];
    
    game.player = player;
    
    [self save];
    
    return game;
    
}

- (void)removeGame:(Game *)game {
    
    if (!game) {
        return;
    }
    
    [game.managedObjectContext deleteObject:game];
    
    [self save];
        
    
}

- (void)save {
    
    
    [[CoreDataHelper sharedInstance] save];
    
}


@end
