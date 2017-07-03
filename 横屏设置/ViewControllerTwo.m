//
//  ViewControllerTwo.m
//  横屏设置
//
//  Created by bjzyzl on 2017/6/26.
//  Copyright © 2017年 bjzyzl. All rights reserved.
//

#import "ViewControllerTwo.h"
#import "ViewControllerThree.h"
@interface ViewControllerTwo ()

@end

@implementation ViewControllerTwo

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor blueColor];
    
    UIButton * jumpBtn = [[UIButton alloc]init];
    jumpBtn.frame = CGRectMake(0, 0, 368, 414);
    [jumpBtn setTitle:@"跳转" forState:UIControlStateNormal];
    [jumpBtn addTarget:self action:@selector(jump) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:jumpBtn];
    
    UIButton * bottomBtn = [[UIButton alloc]init];
    bottomBtn.frame = CGRectMake( 368, 0, 368, 414);
    bottomBtn.backgroundColor = [UIColor greenColor];
    [bottomBtn setTitle:@"返回" forState:UIControlStateNormal];
    [bottomBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bottomBtn];

}
-(void)jump
{
    ViewControllerThree *vc = [[ViewControllerThree alloc]init];
    vc.type = self.type;
    
    /** 需要关闭动画 */
    if (self.type == 1) {
        
        [self.navigationController pushViewController:vc animated:NO];
    }else
    {
        [self presentViewController:vc animated:NO completion:nil];
    }
}

-(void)back
{
    [self dismissViewControllerAnimated:NO completion:nil];
}
-(void)viewWillAppear:(BOOL)animated{

    [super viewWillAppear:animated];
    
    /** 两种方法 */
//    if([[UIDevice currentDevice]respondsToSelector:@selector(setOrientation:)]) {
//        
//        SEL selector = NSSelectorFromString(@"setOrientation:");
//        
//        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
//        
//        [invocation setSelector:selector];
//        
//        [invocation setTarget:[UIDevice currentDevice]];
//        
//        int val = UIInterfaceOrientationLandscapeLeft;//横屏
//        
//        [invocation setArgument:&val atIndex:2];
//        
//        [invocation invoke];
//    }
    
    /** 横屏处理 */
     NSNumber *orientationUnknown = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
     
     [[UIDevice currentDevice] setValue:orientationUnknown forKey:@"orientation"];
     
     NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationLandscapeLeft];
     
     [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    /** 取消转屏 */
    NSNumber *orientationUnknown = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
    
    [[UIDevice currentDevice] setValue:orientationUnknown forKey:@"orientation"];
    
    NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationPortrait];
    
    [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
}

//支持旋转
-(BOOL)shouldAutorotate{
    
    return YES;
}

//支持的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    
    return UIInterfaceOrientationMaskLandscapeLeft;
}



@end
