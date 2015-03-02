//
//  PlayerController.h
//  ScoreCoreDataTwo
//
//  Created by Ethan Hess on 2/28/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "CoreDataHelper.h"
#import "Player.h"
@import CoreData;

@interface PlayerController : NSObject

@property (nonatomic, strong, readonly) NSArray *players;

+ (PlayerController *)sharedInstance;

- (Player *)createWithName;

- (void)removePlayer:(Player *)player;

- (void)save;


@end
