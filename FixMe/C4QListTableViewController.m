//
//  C4QRootTableViewController.m
//  FixMe
//
//  Created by Michael Kavouras on 8/30/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "C4QListTableViewController.h"

@interface C4QListTableViewController ()

@property (nonatomic) NSMutableArray *items;

@end

@implementation C4QListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.items addObject:@{@"name" : @"code", @"imageName" : @"Code"}];
    [self.items addObject:@{@"name" : @"iOS", @"imageName" : @"ios"}];
    [self.items addObject:@{@"name" : @"Access Code", @"imageName" : @"access_code"}];
    [self.items addObject:@{@"name" : @"C4Q", @"imageName" : @"cforq"}];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier" forIndexPath:indexPath];
    
    NSDictionary *item = [self.items objectAtIndex:indexPath.row];
    NSString *name = [item objectForKey:@"name"];
    UIImage *image = [UIImage imageNamed:[item objectForKey:@"imageName"]];
    cell.imageView.image = image;
    cell.textLabel.text = name;
    
    return cell;
}

@end
