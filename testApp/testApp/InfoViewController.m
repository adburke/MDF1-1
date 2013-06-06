//
//  InfoViewController.m
//  testApp
//
//  Created by Aaron Burke on 6/5/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

@synthesize pInfo;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewPersonInfo:(NSDictionary*)personInfo
{
    NSLog(@"viewPersonInfo Fired");
    pInfo = personInfo;
    NSLog(@"name=%@ age=%@ hair=%@ location=%@", [pInfo objectForKey:@"name"],[pInfo objectForKey:@"age"],[pInfo objectForKey:@"hair"],[pInfo objectForKey:@"location"] );
}

- (void)onClick:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView*)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 1;
    } else if (section == 1) {
        return 3;
    } else {
        return 0;
    }

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    if (indexPath.section == 0) {
        cell.textLabel.text = [pInfo objectForKey:@"name"];
    } else if (indexPath.section == 1 && indexPath.row == 0) {
        cell.textLabel.text = [pInfo objectForKey:@"age"];
    } else if (indexPath.section == 1 && indexPath.row == 1) {
        cell.textLabel.text = [pInfo objectForKey:@"hair"];
    } else if (indexPath.section == 1 && indexPath.row == 2) {
        cell.textLabel.text = [pInfo objectForKey:@"location"];
    }
    
    return cell;
}


@end
