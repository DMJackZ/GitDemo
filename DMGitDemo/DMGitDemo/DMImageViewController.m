//
//  DMImageViewController.m
//  DMGitDemo
//
//  Created by JackZ86 on 2018/7/13.
//  Copyright © 2018年 DiMi. All rights reserved.
//

#import "DMImageViewController.h"

@interface DMImageViewController ()

/** UI */
@property (nonatomic, strong) UIImageView *myImgView;

@property (nonatomic, strong) UILabel *signLabel;

@end

@implementation DMImageViewController

#pragma mark - life cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"图片";
    
    [self.view addSubview:self.myImgView];
    self.myImgView.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width - 300) / 2.0, 120, 300, 300);
    
    [self.view addSubview:self.signLabel];
    self.signLabel.frame = CGRectMake([UIScreen mainScreen].bounds.size.width -100, 450, 100, 14);
    
    [self initHeaderBar];
}

- (void)initHeaderBar
{
    UIBarButtonItem *finishItem = [[UIBarButtonItem alloc] initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(rightFinishClicked)];
    self.navigationItem.rightBarButtonItem = finishItem;
}

#pragma mark - event response
- (void)rightFinishClicked
{
    
}

#pragma mark - getter and setter
- (UIImageView *)myImgView
{
    if (_myImgView == nil) {
        _myImgView = [[UIImageView alloc] init];
        _myImgView.backgroundColor = [UIColor clearColor];
        _myImgView.clipsToBounds = YES;
        _myImgView.contentMode = UIViewContentModeScaleAspectFill;
        _myImgView.image = [UIImage imageNamed:@"YY.jpeg"];
    }
    
    return _myImgView;
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
