//
//  registerViewController.m
//  9.8考核
//
//  Created by cinderella on 2019/9/8.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "registerViewController.h"

@interface registerViewController ()

@end

@implementation registerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _nameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 100, 300, 50)];
    _nameTextField.placeholder = @"请输入账号";
    _nameTextField.layer.masksToBounds = YES;
    _nameTextField.layer.borderWidth = 2;
    _nameTextField.layer.cornerRadius = 5;
    _nameTextField.layer.borderColor = [UIColor blackColor].CGColor;
    [self.view addSubview:_nameTextField];
    
    _passTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 180, 300, 50)];
    _passTextField.placeholder = @"请输入密码";
    _passTextField.secureTextEntry = YES;
    _passTextField.layer.masksToBounds = YES;
    _passTextField.layer.borderWidth = 2;
    _passTextField.layer.cornerRadius = 5;
    _passTextField.layer.borderColor = [UIColor blackColor].CGColor;
    [self.view addSubview:_passTextField];
    
    UIButton *loadBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [loadBtn addTarget:self action:@selector(pressLoad) forControlEvents:UIControlEventTouchDown];
    [loadBtn setTitle:@"load" forState:UIControlStateNormal];
    loadBtn.frame = CGRectMake(120, 250, 100, 50);
    [self.view addSubview:loadBtn];
    
}

- (void)pressLoad {
    if ([_registerdelegate respondsToSelector:@selector(passName:passPass:)]) {
        [_registerdelegate passName:_nameTextField.text passPass:_passTextField.text];
    }
    [self dismissViewControllerAnimated:NO completion:nil];
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
