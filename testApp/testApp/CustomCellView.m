//
//  CustomCellView.m
//  testApp
//
//  Created by Aaron Burke on 6/6/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "CustomCellView.h"

@implementation CustomCellView

@synthesize leftLabelText, rightLabelText;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
