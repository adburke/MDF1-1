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
    IBOutlet UILabel *leftLabelText;
    IBOutlet UILabel *rightLabelText;
}
@property (nonatomic, strong) UILabel *leftLabelText;
@property (nonatomic, strong) UILabel *rightLabelText;

@end
