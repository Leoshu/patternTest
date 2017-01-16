//
//  TableViewController.m
//  PatenTest
//
//  Created by Leo_hsu on 2017/1/14.
//  Copyright © 2017年 Leo_hsu. All rights reserved.
//

#import "TableViewController.h"
#import "CustomTableViewCell.h"
#import "DeviceManager.h"
#import "AbstractDevice.h"

static NSString *CELL = @"cell";
static NSString *NEXT_VC = @"detailView";

@interface TableViewController () {
    DeviceManager *deviceManager;
    NSArray<AbstractDevice *> *tableData;
}

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    deviceManager = [DeviceManager sharedInstance];
    tableData = [deviceManager getDeviceList];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL];
    
    if (cell == nil) {
        cell = [[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CELL];
    }
    
    AbstractDevice *device = [tableData objectAtIndex:indexPath.row];
    [cell setDevice:device];
    [cell showCell];
    
    return cell;
}

# pragma mark - UITableViewDelegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *nextController = [self.storyboard instantiateViewControllerWithIdentifier:NEXT_VC];
    
    [self.navigationController pushViewController:nextController animated:YES];
}

@end
