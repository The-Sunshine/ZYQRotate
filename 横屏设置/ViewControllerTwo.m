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

    self.view.backgroundColor = [UIColor yellowColor];
    
}


-(void)viewWillAppear:(BOOL)animated{

    [super viewWillAppear:animated];
    
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
    
     NSNumber *orientationUnknown = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
     
     [[UIDevice currentDevice] setValue:orientationUnknown forKey:@"orientation"];
     
     NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationLandscapeLeft];
     
     [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
    
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    NSNumber *orientationUnknown = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
    
    [[UIDevice currentDevice] setValue:orientationUnknown forKey:@"orientation"];
    
    NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationPortrait];
    
    [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
}
////支持旋转
//
-(BOOL)shouldAutorotate{
    
    return YES;
    
}
//支持的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    
    return UIInterfaceOrientationMaskLandscapeLeft;
    
}
//
////一开始的方向  很重要
//



-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    ViewControllerThree *vc = [[ViewControllerThree alloc]init];
    [self.navigationController pushViewController:vc animated:NO];
}

@end
