//
//  Page1ViewController.m
//  KaoHe
//
//  Created by 蒲悦蓉 on 2019/9/8.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "Page1ViewController.h"
#import "Page3ViewController.h"
#import "PYR1TableViewCell.h"
#import "PYR2TableViewCell.h"
@interface Page1ViewController ()
@property UITextField *searchTextFiled;
@property UIScrollView *scrollerView;
@property UITableView *tableView;
@property NSMutableArray *contentArray;
@property UIButton *nowButton;
@property UIButton *willButton;
@property BOOL select;
@property UILabel *numberLabel;

@end

@implementation Page1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIScrollView *scrollerView = [[UIScrollView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:scrollerView];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 50, 30)];
    label.text = @"西安";
    label.textColor = [UIColor blackColor];
    [scrollerView addSubview:label];
    _numberLabel = [[UILabel alloc] initWithFrame:CGRectMake(280, 280, 95, 50)];
    _numberLabel.text = @"全部45部>";
    [scrollerView addSubview:_numberLabel];
    
    _searchTextFiled = [[UITextField alloc] initWithFrame:CGRectMake(70, 10, 250, 30)];
    _searchTextFiled.placeholder = @"找影视剧，影人，影院，演出，图书";
    _searchTextFiled.backgroundColor = [UIColor colorWithRed:0.85f green:0.85f blue:0.85f alpha:1.00f];
    [scrollerView addSubview:_searchTextFiled];
    scrollerView.contentSize = CGSizeMake(375, 3630);
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 50, 375, 195)];
    imageView.image = [UIImage imageNamed:@"page1.jpg"];
    
    [scrollerView addSubview:imageView];
    _select = YES;
    _nowButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_nowButton setFrame:CGRectMake(0, 280, 100, 50)];
    [_nowButton setTitle:@"正在热映" forState:UIControlStateNormal];
    [_nowButton addTarget:self action:@selector(pressNow) forControlEvents:UIControlEventTouchUpInside];
    [_nowButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    _willButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_willButton setFrame:CGRectMake(100, 280, 100, 50)];
    [_willButton setTitle:@"即将上映" forState:UIControlStateNormal];
    [_willButton addTarget:self action:@selector(pressWill) forControlEvents:UIControlEventTouchUpInside];
    [_willButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    
    [scrollerView addSubview:_nowButton];
    [scrollerView addSubview:_willButton];
    
    _scrollerView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 340, 375, 240)];
    _scrollerView.contentSize = CGSizeMake(675, 480);
    _scrollerView.alwaysBounceVertical = NO;
    [scrollerView addSubview:_scrollerView];
    _scrollerView.bounces = NO;
    
    
    NSMutableArray *nameArray = [[NSMutableArray alloc] initWithObjects: @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12", nil];
    // Do any additional setup after loading the view.
    for (int i = 1; i <= 6; i++) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(-80 + 100 * i, 0, 80, 150)];
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.JPG", i]];
        
        UIImageView *willImageView = [[UIImageView alloc] initWithFrame:CGRectMake(-80 + 100 * i, 240, 80, 150)];
        willImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"back%d.JPG", i]];
        [_scrollerView addSubview:willImageView];
        
        UILabel *namelabel = [[UILabel alloc] initWithFrame:CGRectMake(-80 + 100 * i, 180, 80, 30)];
        namelabel.text = nameArray[i - 1];
        namelabel.textAlignment = NSTextAlignmentCenter;
        
        UILabel *name2label = [[UILabel alloc] initWithFrame:CGRectMake(-80 + 100 * i, 420, 80, 30)];
        name2label.text = nameArray[i + 5];
        name2label.textAlignment = NSTextAlignmentCenter;
        [_scrollerView addSubview:name2label];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(-65 + 100 * i, 210, 50, 30)];
        label.text = @"购票";
        label.backgroundColor = [UIColor redColor];
        label.textAlignment = NSTextAlignmentCenter;
        
        UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(-65 + 100 * i, 450, 50, 30)];
        label2.text = @"购票";
        label2.backgroundColor = [UIColor redColor];
        [_scrollerView addSubview:label2];
        label2.textAlignment = NSTextAlignmentCenter;
        
        [_scrollerView addSubview:imageView];
        [_scrollerView addSubview:namelabel];
        [_scrollerView addSubview:label];
    }
    _scrollerView.delegate = self;
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 630, 375, 3000) style:UITableViewStylePlain];
    [_tableView registerClass:[PYR1TableViewCell class] forCellReuseIdentifier:@"cell1"];
    [_tableView registerClass:[PYR2TableViewCell class] forCellReuseIdentifier:@"cell2"];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [scrollerView addSubview:_tableView];
    
    _contentArray = [[NSMutableArray alloc] initWithObjects:@"当我逆着光 走向前方", @"我看不到自己的模样", @"但我即将跨过这个时间节点", @"我也会纠结去向何方", @"习惯了你们温柔的笑脸", @"也害怕在终点不能有幸相见", @"学会了尽量处事通透", @"也克制了自己的情绪表达", @"这样的时光 也算圆满", @"人的一生 就是在不断的与过去告别", nil];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [_searchTextFiled resignFirstResponder];
    return YES;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_searchTextFiled resignFirstResponder];
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (_select == YES) {
        [_scrollerView setContentOffset:CGPointMake(_scrollerView.contentOffset.x, 0)];
    } else {
        [_scrollerView setContentOffset:CGPointMake(_scrollerView.contentOffset.x, 240)];
    }
}
- (void)pressNow {
    _select = YES;
    [_scrollerView setContentOffset:CGPointMake(0, 0)];
    _numberLabel.text = @"全部45部>";
    [_nowButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [_willButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
}

- (void)pressWill {
    _select = NO;
    [_scrollerView setContentOffset:CGPointMake(0, 240)];
    _numberLabel.text = @"全部70部>";
    [_nowButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_willButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if ((int)indexPath.row % 2 == 0) {
        PYR1TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
        cell.themeLabel.text = _contentArray[indexPath.row];
        cell.imageView1.image = [UIImage imageNamed:@"roy1.JPG"];
        cell.imageView2.image = [UIImage imageNamed:@"roy3.JPG"];
        cell.imageView3.image = [UIImage imageNamed:@"roy2.JPG"];
        cell.fromLabel.text = @"王源";
        return cell;
    } else {
        PYR2TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
        cell.themeLabel.text = _contentArray[indexPath.row];
        cell.imageView0.image = [UIImage imageNamed:@"themeImage2.png"];
        cell.fromLabel.text = @"猫眼电影";
        return cell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 300;
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
