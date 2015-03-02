//
//  Game.h
//  ScoreCoreData
//
//  Created by Ethan Hess on 2/27/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Game : NSManagedObject

@property (nonatomic, retain) NSString * player;
@property (nonatomic, retain) NSString * score;

@end
