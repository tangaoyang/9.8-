//
//  ViewController.m
//  9.8考核
//
//  Created by cinderella on 2019/9/8.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "ViewController.h"
#import "registerViewController.h"
#import "FirstViewController.h"
#import "secondViewController.h"
#import "thirdViewController.h"
#import "fourthViewController.h"
#import "fifthViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
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
    loadBtn.frame = CGRectMake(80, 250, 100, 50);
    [self.view addSubview:loadBtn];
    
    UIButton *registerBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [registerBtn addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchDown];
    [registerBtn setTitle:@"register" forState:UIControlStateNormal];
    registerBtn.frame = CGRectMake(200, 250, 100, 50);
    [self.view addSubview:registerBtn];
    
    _nameArr = [[NSMutableArray alloc] init];
    _passArr = [[NSMutableArray alloc] init];
}

- (void)pressLoad {
    
    int i;
    [_nameArr addObject:@"iOSnb123"];
    [_passArr addObject:@"123456789"];
    for (i = 0; i < _nameArr.count; i++) {
        if ([_nameArr[i]isEqualToString:_nameTextField.text] && [_passArr[i]isEqualToString:_passTextField.text]) {
            FirstViewController *first = [[FirstViewController alloc] init];
            UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:first];
            nav1.title = @"1";
            
            secondViewController *second = [[secondViewController alloc] init];
            UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:second];
            nav2.title = @"2";
            
            thirdViewController *third = [[thirdViewController alloc] init];
            UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:third];
            nav3.title = @"3";
            
            fourthViewController *fourth = [[fourthViewController alloc] init];
            UINavigationController *nav4 = [[UINavigationController alloc] initWithRootViewController:fourth];
            nav4.title = @"4";
            
            fifthViewController *fifth = [[fifthViewController alloc] init];
            UINavigationController *nav5 = [[UINavigationController alloc] initWithRootViewController:fifth];
            nav5.title = @"5";
            
            UITabBarController *tabBar = [[UITabBarController alloc] init];
            NSArray *navArr = @[nav1, nav2, nav3, nav4, nav5];
            tabBar.viewControllers = navArr;
            
            [self presentViewController:tabBar animated:NO completion:nil];
            
        }
    }
    
}

- (void)pressRegister {
    
    registerViewController *root = [[registerViewController alloc] init];
    root.registerdelegate = self;
    [self presentViewController:root animated:NO completion:nil];
    
}

- (void)passName:(NSString *)name passPass:(NSString *)pass {
    
    _nameTextField.text = name;
    _passTextField.text = pass;
    [_nameArr addObject:name];
    [_passArr addObject:pass];
    
}


@end
