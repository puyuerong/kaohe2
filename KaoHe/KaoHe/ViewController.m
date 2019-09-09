//
//  ViewController.m
//  KaoHe
//
//  Created by 蒲悦蓉 on 2019/9/8.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "ViewController.h"
#import "Page1ViewController.h"
#import "Page2ViewController.h"
#import "Page3ViewController.h"
#import "Page4ViewController.h"
#import "Page5ViewController.h"
@interface ViewController ()
@property UITextField *nameTextFiled;
@property UITextField *psdTextField;
@property NSString *nameStr;
@property NSString *psdStr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:0.74f green:0.92f blue:0.50f alpha:1.00f];
    _nameTextFiled = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 175, 50)];
    _nameTextFiled.placeholder = @"输入用户名";
    _psdTextField = [[UITextField alloc] initWithFrame:CGRectMake(100, 300, 175, 50)];
    _psdTextField.placeholder = @"输入密码";
    UIButton *landButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [landButton setTitle:@"登陆" forState:UIControlStateNormal];
    [landButton addTarget:self action:@selector(pressLand) forControlEvents:UIControlEventTouchUpInside];
    [landButton setFrame:CGRectMake(100, 500, 60, 30)];
    
    UIButton *registerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [registerButton setTitle:@"注册" forState:UIControlStateNormal];
    [registerButton addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    [registerButton setFrame:CGRectMake(217, 500, 60, 30)];
    
    [self.view addSubview:_nameTextFiled];
    [self.view addSubview:_psdTextField];
    [self.view addSubview:landButton];
    [self.view addSubview:registerButton];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_nameTextFiled resignFirstResponder];
    [_psdTextField resignFirstResponder];
}

- (void)pressLand {
    if (([_nameTextFiled.text isEqualToString:@":iOSnb123"] && [_psdTextField.text isEqualToString:@"123456789"]) || ([_nameTextFiled.text isEqualToString:_nameStr] && [_psdTextField.text isEqualToString:_psdStr])) {
        Page1ViewController *VC1 = [[Page1ViewController alloc] init];
        UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:VC1];
        Page2ViewController *VC2 = [[Page2ViewController alloc] init];
        UINavigationController *nav2= [[UINavigationController alloc] initWithRootViewController:VC2];
        Page3ViewController *VC3 = [[Page3ViewController alloc] init];
        UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:VC3];
        Page4ViewController *VC4 = [[Page4ViewController alloc] init];
        UINavigationController *nav4 = [[UINavigationController alloc] initWithRootViewController:VC4];
        Page5ViewController *VC5 = [[Page5ViewController alloc] init];
        UINavigationController *nav5 = [[UINavigationController alloc] initWithRootViewController:VC5];
        NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:nav1, nav2, nav3, nav4, nav5, nil];
        UITabBarController *tabBarController = [[UITabBarController alloc] init];
        tabBarController.viewControllers = array;
        self.view.window.rootViewController = tabBarController;
        
    }
}
- (void)pushName:(NSString*)nameStr password:(NSString*)psdStr {
    _nameTextFiled.text = nameStr;
    _nameStr = nameStr;
    _psdTextField.text = psdStr;
    _psdStr = psdStr;
}
- (void)pressRegister {
    RegisterViewController *registerVC = [[RegisterViewController alloc] init];
    registerVC.delegate = self;
    [self presentViewController:registerVC animated:YES completion:nil];
}
@end
