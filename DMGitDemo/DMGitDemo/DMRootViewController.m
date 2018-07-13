//
//  DMRootViewController.m
//  DMGitDemo
//
//  Created by JackZ86 on 2018/7/12.
//  Copyright © 2018年 DiMi. All rights reserved.
//

#import "DMRootViewController.h"
#import "DMImageViewController.h"

@interface DMRootViewController ()

/** UI */
@property (nonatomic, strong) UIButton *myBtn;

@property (nonatomic, strong) UILabel *signLabel;

@end

@implementation DMRootViewController

#pragma mark - life cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"GitDemo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.myBtn];
    self.myBtn.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width - 200) / 2.0, 180, 200, 40);
    
    [self.view addSubview:self.signLabel];
    self.signLabel.frame = CGRectMake([UIScreen mainScreen].bounds.size.width -100, 280, 100, 14);
    
    [self initHeaderBar];
}

- (void)initHeaderBar
{
    UIBarButtonItem *finishItem = [[UIBarButtonItem alloc] initWithTitle:@"设置" style:UIBarButtonItemStylePlain target:self action:@selector(rightSettingClicked)];
    self.navigationItem.rightBarButtonItem = finishItem;
}

#pragma mark - event response
- (void)btnClicked:(id)sender
{
    DMImageViewController *imgVC = [[DMImageViewController alloc] init];
    [self.navigationController pushViewController:imgVC animated:YES];
}

- (void)rightSettingClicked
{
    
}

#pragma mark - getter and setter
- (UIButton *)myBtn
{
    if (_myBtn == nil) {
        _myBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _myBtn.backgroundColor = [UIColor greenColor];
        _myBtn.exclusiveTouch = YES;
        [_myBtn setTitle:@"点我" forState:UIControlStateNormal];
        [_myBtn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _myBtn;
}

- (UILabel *)signLabel
{
    if (_signLabel == nil) {
        _signLabel = [[UILabel alloc] init];
        _signLabel.backgroundColor = [UIColor clearColor];
        _signLabel.text = @"JackZ86";
        _signLabel.font = [UIFont systemFontOfSize:12];
        _signLabel.textColor = [UIColor blackColor];
    }
    
    return _signLabel;
}

@end
