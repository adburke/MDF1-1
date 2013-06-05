//
//  ViewController.h
//  testApp
//
//  Created by Aaron Burke on 6/4/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate>
{
    IBOutlet UITableView *mainTable;
    
    NSMutableArray *peopleArray;
}

-(IBAction)onClick:(id)sender;

@end
