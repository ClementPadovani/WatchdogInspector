//
//  ViewController.m
//  WatchdogExample
//
//  Created by Christian Menschel on 26/01/16.
//  Copyright © 2016 tapwork GmbH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CELL"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL" forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"Row %@", @(indexPath.row)];
    [NSThread sleepForTimeInterval:0.03f];
    return cell;
}

@end
