//
//  CustomCellView.h
//  testApp
//
//  Created by Aaron Burke on 6/6/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCellView : UITableViewCell
{
    // Outlets for custom cell
    IBOutlet UILabel *leftLabelText;
    IBOutlet UILabel *rightLabelText;
}
// Created them as properties so they could be accessed from viewController.m
@property (nonatomic, strong) UILabel *leftLabelText;
@property (nonatomic, strong) UILabel *rightLabelText;

@end
