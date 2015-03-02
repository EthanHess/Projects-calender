//
//  GameController.h
//  ScoreCoreData
//
//  Created by Ethan Hess on 2/25/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "CoreDataHelper.h"
#import "Game.h"
@import CoreData;

@interface GameController : NSObject

@property (nonatomic, strong, readonly) NSArray *players;

+ (GameController *)sharedInstance;

- (Game *)createPlayerCell:(NSString *)player;

- (void)removeGame:(Game *)game;

- (void)save;

@end
