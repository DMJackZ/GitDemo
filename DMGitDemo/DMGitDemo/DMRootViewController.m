//
//  DMRootViewController.m
//  DMGitDemo
//
//  Created by JackZ86 on 2018/7/12.
//  Copyright © 2018年 DiMi. All rights reserved.
//

#import "DMRootViewController.h"

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
}

#pragma mark - event response
- (void)btnClicked:(id)sender
{
    
}

#pragma mark - getter and setter
- (UIButton *)myBtn
{
    if (_myBtn == nil) {
        _myBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _myBtn.backgroundColor = [UIColor greenColor];
        _myBtn.exclusiveTouch = YES;
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
