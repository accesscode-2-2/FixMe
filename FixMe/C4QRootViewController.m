//
//  C4QRootViewController.m
//  FixMe
//
//  Created by Michael Kavouras on 9/10/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "C4QRootViewController.h"
#import "C4QListTableViewController.h"

@interface C4QRootViewController ()

@end

@implementation C4QRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushButtonTapped:(UIButton *)sender {
    C4QListTableViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ListViewControllerIdentifier"];
    [self.navigationController pushViewController:viewController animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
