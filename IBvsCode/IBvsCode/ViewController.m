//
//  ViewController.m
//  IBvsCode
//
//  Created by dsx on 15/4/23.
//  Copyright (c) 2015年 dsx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *logoImg = [[UIImageView alloc]init];
    logoImg.frame = CGRectMake(20, 40, 280, 90);
    logoImg.image = [UIImage imageNamed:@"comefrom.png"];
    logoImg.contentMode = UIViewContentModeCenter;
    [self.view addSubview:logoImg];
    
    UILabel *accountLbl = [[UILabel alloc]init];
    accountLbl.frame = CGRectMake(59, 187, 45, 18);
    accountLbl.font = [UIFont systemFontOfSize:15];
    accountLbl.textColor = [UIColor darkGrayColor];
    accountLbl.text = @"账号:";
    [self.view addSubview:accountLbl];
    UILabel *pwdLbl = [[UILabel alloc]init];
    pwdLbl.frame = CGRectMake(59, 231, 45, 18);
    pwdLbl.font = [UIFont systemFontOfSize:15];
    pwdLbl.textColor = [UIColor darkGrayColor];
    pwdLbl.text = @"密码:";
    [self.view addSubview:pwdLbl];
    
    UITextField *accountTxt = [[UITextField alloc]init];
    accountTxt.frame = CGRectMake(121, 181, 137, 30);
    accountTxt.placeholder = @"请输入:";
    accountTxt.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:accountTxt];
    UITextField *pwdTxt = [[UITextField alloc]init];
    pwdTxt.frame = CGRectMake(121, 225, 137, 30);
    pwdTxt.placeholder = @"请输入:";
    pwdTxt.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:pwdTxt];
    
    UIView *blueView = [[UIView alloc]init];
    blueView.frame = CGRectMake(113, 276, 94, 36);
    blueView.backgroundColor = [UIColor colorWithRed:0 green:122/255.0 blue:1 alpha:0.5];
    blueView.layer.cornerRadius = 10;
    blueView.clipsToBounds = YES;
    [self.view addSubview:blueView];
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    loginBtn.frame = CGRectMake(24, 3, 46, 30);
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [blueView addSubview:loginBtn];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
