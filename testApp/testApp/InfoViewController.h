//
//  InfoViewController.h
//  testApp
//
//  Created by Aaron Burke on 6/5/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface InfoViewController : UIViewController <UITableViewDelegate>
{
    IBOutlet UITableView *infoTable;
    IBOutlet UILabel *titleLabel;
    NSInteger count;
}

@property (nonatomic, strong) NSDictionary *pInfo;

-(IBAction)onClick:(id)sender;

@end
