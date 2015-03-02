//
//  CellController.h
//  ScoreCoreDataTwo
//
//  Created by Ethan Hess on 2/28/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
#import "PlayerController.h"
#import "TableViewDataSource.h"

@interface CellController : UITableViewCell

@property (nonatomic, strong) UILabel *scoreLabel;
@property (nonatomic, strong) UITextField *nameField;
@property (nonatomic, strong) UIStepper *scoreStepper; 

@end
