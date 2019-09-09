//
//  RegisterViewController.m
//  KaoHe
//
//  Created by 蒲悦蓉 on 2019/9/8.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()
@property UITextField *nameTextFiled;
@property UITextField *psdTextField;
@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:0.74f green:0.92f blue:0.50f alpha:1.00f];
    _nameTextFiled = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 175, 50)];
    _nameTextFiled.placeholder = @"输入用户名";
    _psdTextField = [[UITextField alloc] initWithFrame:CGRectMake(100, 300, 175, 50)];
    _psdTextField.placeholder = @"输入密码";
 
   
    UIButton *registerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [registerButton setTitle:@"确认注册" forState:UIControlStateNormal];
    [registerButton addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    [registerButton setFrame:CGRectMake(150, 500, 75, 30)];
    
    [self.view addSubview:_nameTextFiled];
    [self.view addSubview:_psdTextField];
    [self.view addSubview:registerButton];
}
- (void)pressRegister {
    [_delegate pushName:_nameTextFiled.text password:_psdTextField.text];
    [self dismissViewControllerAnimated:YES completion:nil];
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
