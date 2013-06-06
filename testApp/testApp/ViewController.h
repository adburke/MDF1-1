//
//  ViewController.h
//  testApp
//
//  Created by Aaron Burke on 6/4/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InfoViewController.h"

// Deletgate for passing info on a person
@protocol PersonInfoDelegate <NSObject>

@optional
// Required method that will be passed the corresponding dictionary of inf o for the person selected on the row
- (void)viewPersonInfo:(NSDictionary*)personInfo;

@end

@interface ViewController : UIViewController <UITableViewDelegate>
{
    // Main table view
    IBOutlet UITableView *mainTable;
    
    // Hard coded array of dictionaries to use for data
    NSMutableArray *peopleArray;
}

// Property id of the delegate
@property (nonatomic, weak) id <PersonInfoDelegate> delegate;

// Controls the click even of the edit button
-(IBAction)onClick:(id)sender;

@end
