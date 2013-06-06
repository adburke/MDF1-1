//
//  ViewController.h
//  testApp
//
//  Created by Aaron Burke on 6/4/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PersonInfoDelegate <NSObject>

@optional
// Required method that will be passed the corresponding dictionary of inf o for the person selected on the row
- (void)viewPersonInfo:(NSDictionary*)personInfo;

@end

@interface ViewController : UIViewController <UITableViewDelegate>
{
    IBOutlet UITableView *mainTable;
    
    NSMutableArray *peopleArray;
}

-(IBAction)onClick:(id)sender;

@end
