//
//  CustonCell.h
//  ScoreCoreData
//
//  Created by Ethan Hess on 2/25/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CustomCell : UITableViewCell

@property (nonatomic, strong) UILabel *scoreLabel;
@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UIStepper *stepper;

- (void)stepperChanged:(id)sender;

- (void)clearFields; 


@end
