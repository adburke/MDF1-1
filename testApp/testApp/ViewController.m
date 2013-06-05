//
//  ViewController.m
//  testApp
//
//  Created by Aaron Burke on 6/4/13.
//  Copyright (c) 2013 Aaron Burke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = @"Testing";
    
    return cell;
}

- (void)viewDidLoad
{
    peopleArray = [[NSMutableArray alloc] initWithObjects:
                   @{@"name":@"Aaron Burke", @"age":@31, @"hair":@"Brown", @"location":@"Huntsville, Alabama"},
                   @{@"name":@"John Doe", @"age":@90, @"hair":@"Blonde", @"location":@"Whoknows, Alaska"},
                   @{@"name":@"Jim Smith", @"age":@25, @"hair":@"Red", @"location":@"Atlanta, Georgia"},
                   @{@"name":@"Allen Black", @"age":@45, @"hair":@"Brown", @"location":@"Nashville, Tennessee"},
                   @{@"name":@"Jill Stall", @"age":@18, @"hair":@"Blonde", @"location":@"Boston, Massachusetts"},
                   @{@"name":@"Brian Burns", @"age":@35, @"hair":@"Brown", @"location":@"Birmingham, Alabama"},
                   
                   @{@"name":@"Jillian Stuart", @"age":@15, @"hair":@"Blond", @"location":@"Orlando, Florida"},
                   @{@"name":@"Jason Jones", @"age":@39, @"hair":@"Red", @"location":@"Mobile, Alabama"},
                   @{@"name":@"Carey Costa", @"age":@12, @"hair":@"Brown", @"location":@"Memphis, Tennessee"},
                   @{@"name":@"Marey Man", @"age":@55, @"hair":@"Blond", @"location":@"San Jose, California"},
                   @{@"name":@"Erin Brill", @"age":@21, @"hair":@"Blonde", @"location":@"New York, New York"},
                   @{@"name":@"Milley Potts", @"age":@31, @"hair":@"Brown", @"location":@"Portland, Oregon"},
                   
                   @{@"name":@"Andrew Nicas", @"age":@28, @"hair":@"Brown", @"location":@"Las Vegas, Nevada"},
                   @{@"name":@"Adam Billings", @"age":@72, @"hair":@"Red", @"location":@"Sparta, Wisconsin"},
                   @{@"name":@"Joan Rics", @"age":@27, @"hair":@"Blonde", @"location":@"Springfield, Virginia"},
                   @{@"name":@"Anthony Leonard", @"age":@31, @"hair":@"Brown", @"location":@"Knoxville, Tennessee"},
                   @{@"name":@"Maney Pastas", @"age":@20, @"hair":@"Blonde", @"location":@"Yuma, Arizona"},
                   @{@"name":@"Neil Pike", @"age":@67, @"hair":@"Brown", @"location":@"Key West, Florida"},
                   
                   @{@"name":@"Edward Justice", @"age":@24, @"hair":@"Brown", @"location":@"San Francisco, California"},
                   @{@"name":@"Pauly Nice", @"age":@82, @"hair":@"Blonde", @"location":@"Phoenix, Arizona"},
                   @{@"name":@"Angela Cole", @"age":@30, @"hair":@"Brown", @"location":@"Destin, Florida"},
                   @{@"name":@"Sarah Kops", @"age":@12, @"hair":@"Brown", @"location":@"Oakland, California"},
                   @{@"name":@"Drew Shores", @"age":@29, @"hair":@"Brown", @"location":@"Dallas, Texas"},
                   @{@"name":@"Randy Knox", @"age":@35, @"hair":@"Brown", @"location":@"Denver, Colorado"},
                   nil];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
