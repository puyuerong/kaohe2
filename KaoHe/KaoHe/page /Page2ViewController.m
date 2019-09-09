//
//  Page2ViewController.m
//  KaoHe
//
//  Created by 蒲悦蓉 on 2019/9/8.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "Page2ViewController.h"

@interface Page2ViewController ()
@property UIScrollView *scrollerView;
@end

@implementation Page2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    imageView.image = [UIImage imageNamed:@"back3.JPG"];
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
