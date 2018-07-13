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


@end
