//
//  Page3ViewController.m
//  KaoHe
//
//  Created by 蒲悦蓉 on 2019/9/8.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "Page3ViewController.h"
#import "PYR1TableViewCell.h"
#import "PYR2TableViewCell.h"
@interface Page3ViewController ()
@property UITableView *tableView;
@property NSMutableArray *contentArray;
@end

@implementation Page3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    imageView.image = [UIImage imageNamed:@"back2.JPG"];
    [self.view addSubview:imageView];
    
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
