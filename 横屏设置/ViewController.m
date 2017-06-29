//
//  ViewController.m
//  横屏设置
//
//  Created by bjzyzl on 2017/6/26.
//  Copyright © 2017年 bjzyzl. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerTwo.h"
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
}
//支持旋转

-(BOOL)shouldAutorotate{
    
    return YES;
    
}

//支持的方向 因为界面A我们只需要支持竖屏

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    
    return UIInterfaceOrientationMaskPortrait;
    
}

-(void)onDeviceOrientationChange
{
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    ViewControllerTwo *vc = [[ViewControllerTwo alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
