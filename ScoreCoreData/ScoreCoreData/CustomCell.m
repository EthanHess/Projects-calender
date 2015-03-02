//
//  CustonCell.m
//  ScoreCoreData
//
//  Created by Ethan Hess on 2/25/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        self.backgroundColor = [UIColor blackColor];
    
        self.stepper = [[UIStepper alloc]initWithFrame:CGRectMake(250, 5, 50, 30)];
        [self.stepper addTarget:self action:@selector(stepperChanged:) forControlEvents:UIControlEventTouchUpInside];
        self.stepper.backgroundColor = [UIColor colorWithRed:155.0/255 green:100.0/255 blue:78.0/255 alpha:1];
        [self.stepper sizeToFit];
    
        self.textField = [[UITextField alloc]initWithFrame:CGRectMake(35, 5, 30, 30)];
        self.textField.backgroundColor = [UIColor colorWithRed:200.0/255 green:145.0/255 blue:50.0/255 alpha:1];
        [self.textField setTextColor:[UIColor greenColor]];
        self.textField.placeholder = @" name ";
        self.textField.font = [UIFont systemFontOfSize:21];
        self.textField.borderStyle = UITextBorderStyleRoundedRect;
        [self.textField sizeToFit];
        
    
        self.scoreLabel = [[UILabel alloc]initWithFrame:CGRectMake(160, 5, 30, 30)];
        self.scoreLabel.text = @"  0  ";
        self.scoreLabel.backgroundColor = [UIColor colorWithRed:255.0/255 green:155.0/255 blue:55.0/255 alpha:1];
        [self.scoreLabel setTextColor:[UIColor yellowColor]];
        self.scoreLabel.font = [UIFont systemFontOfSize:21];
        [self.scoreLabel sizeToFit];
        
        [self.contentView addSubview:self.stepper];
        [self.contentView addSubview:self.scoreLabel];
        [self.contentView addSubview:self.textField];
        
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"sand.jpg"]];
        
    }
    
    return self;
    
}

- (void)stepperChanged:(id)sender {
    
    UIStepper *stepper = sender;
    double value = stepper.value;
    UILabel *scoreLabel = self.scoreLabel;
    
    scoreLabel.text = [NSString stringWithFormat:@" %d ", (int)value];
    
    if ((int)stepper.value >= 10) {
        [[NSNotificationCenter defaultCenter]postNotificationName:@"GameWonNotification" object:nil];
    }

    
}

- (void)clearFields {
    
    
    [self.textField setText:@"name"];
    [self.scoreLabel setText:@"0"];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    
}




@end
