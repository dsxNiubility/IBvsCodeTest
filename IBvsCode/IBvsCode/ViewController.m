//
//  ViewController.m
//  IBvsCode
//
//  Created by dsx on 15/4/23.
//  Copyright (c) 2015年 dsx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic,strong)UIImageView *logoImg;
@property(nonatomic,strong)UILabel *accountLbl;
@property(nonatomic,strong)UILabel *pwdLbl;
@property(nonatomic,strong)UITextField *accountTxt;
@property(nonatomic,strong)UITextField *pwdTxt;
@property(nonatomic,strong)UIView *blueView;
@property(nonatomic,strong)UIButton *loginBtn;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    return;
    [self addLogoImgScore:0 withCc:nil withDd:YES];
    
    UILabel *accountLbl = [[UILabel alloc]init];
    accountLbl.frame = CGRectMake(59, 187, 45, 18);
    accountLbl.font = [UIFont systemFontOfSize:15];
    accountLbl.textColor = [UIColor darkGrayColor];
    self.accountLbl = accountLbl;
    [self.view addSubview:accountLbl];
    UILabel *pwdLbl = [[UILabel alloc]init];
    pwdLbl.frame = CGRectMake(59, 231, 45, 18);
    pwdLbl.font = [UIFont systemFontOfSize:15];
    pwdLbl.textColor = [UIColor darkGrayColor];
    self.pwdLbl = pwdLbl;
    [self.view addSubview:pwdLbl];
    
    UITextField *accountTxt = [[UITextField alloc]init];
    accountTxt.frame = CGRectMake(121, 181, 137, 30);
    accountTxt.borderStyle = UITextBorderStyleRoundedRect;
    self.accountTxt = accountTxt;
    [self.view addSubview:accountTxt];
    UITextField *pwdTxt = [[UITextField alloc]init];
    pwdTxt.frame = CGRectMake(121, 225, 137, 30);
    pwdTxt.borderStyle = UITextBorderStyleRoundedRect;
    pwdTxt.secureTextEntry = YES;
    self.pwdTxt = pwdTxt;
    [self.view addSubview:pwdTxt];
    
    UIView *blueView = [[UIView alloc]init];
    blueView.frame = CGRectMake(113, 276, 94, 36);
    blueView.backgroundColor = [UIColor colorWithRed:0 green:122/255.0 blue:1 alpha:0.5];
    blueView.layer.cornerRadius = 10;
    blueView.layer.masksToBounds = YES;
    self.blueView = blueView;
    [self.view addSubview:blueView];
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    loginBtn.frame = CGRectMake(24, 3, 46, 30);
    self.loginBtn = loginBtn;
    [loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [blueView addSubview:loginBtn];
    
    self.logoImg.image = [UIImage imageNamed:@"comefrom.png"];
    accountLbl.text = @"账号:";
    pwdLbl.text = @"密码:";
    accountTxt.placeholder = @"请输入:";
    pwdTxt.placeholder = @"请输入:";
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];

}

- (void)addLogoImgScore:(int)score withCc:(UITableViewCell*)age withDd:(BOOL)ff{
    
    UIImageView *logoImg = [[UIImageView alloc]init];
    logoImg.frame = CGRectMake(20, 40, 280, 90);
    logoImg.contentMode = UIViewContentModeCenter;
    self.logoImg = logoImg;
    [self.view addSubview:logoImg];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

@end
