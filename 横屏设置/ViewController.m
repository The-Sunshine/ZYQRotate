//
//  ViewController.m
//  横屏设置
//
//  Created by bjzyzl on 2017/6/26.
//  Copyright © 2017年 bjzyzl. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerTwo.h"
#import "ZYQNaviController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(onDeviceOrientationChange)
                                                 name:UIDeviceOrientationDidChangeNotification
                                               object:nil];
    
    [self initUI];
}
-(void)onDeviceOrientationChange
{
    //屏幕旋转 改变布局
}
-(void)initUI
{
    UIButton * topBtn = [[UIButton alloc]init];
    topBtn.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.center.y);
    topBtn.backgroundColor = [UIColor yellowColor];
    [topBtn setTitle:@"有Navi" forState:UIControlStateNormal];
    [topBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [topBtn addTarget:self action:@selector(topClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:topBtn];
    
    UIButton * bottomBtn = [[UIButton alloc]init];
    bottomBtn.frame = CGRectMake(0, self.view.center.y, self.view.frame.size.width, self.view.center.y);
    bottomBtn.backgroundColor = [UIColor greenColor];
    [bottomBtn setTitle:@"无Navi" forState:UIControlStateNormal];
    [bottomBtn addTarget:self action:@selector(bottomClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bottomBtn];
}
-(void)topClick
{
    ViewControllerTwo *vc = [[ViewControllerTwo alloc]init];
    vc.type = 1;
    ZYQNaviController * navi = [[ZYQNaviController alloc]initWithRootViewController:vc];
    [self presentViewController:navi animated:YES completion:nil];
}
-(void)bottomClick
{
    ViewControllerTwo *vc = [[ViewControllerTwo alloc]init];
    vc.type = 2;
    [self presentViewController:vc animated:YES completion:nil];
}


@end
