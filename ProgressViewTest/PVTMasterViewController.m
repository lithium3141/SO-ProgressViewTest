//
//  PVTMasterViewController.m
//  ProgressViewTest
//
//  Created by Tim Ekl on 9/11/12.
//  Copyright (c) 2012 Tim Ekl. All rights reserved.
//

#import "PVTMasterViewController.h"

#import "PVTDetailViewController.h"

#import "CustomCell.h"

@interface PVTMasterViewController () {
    NSMutableArray *_objects;
}
@end

@implementation PVTMasterViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];

    cell.textLabel.text = @"Test";
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        [[segue destinationViewController] setDetailItem:nil];
    }
}

@end
