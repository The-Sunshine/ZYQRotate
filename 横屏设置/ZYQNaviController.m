//
//  ZYQNaviController.m
//  ChildController
//
//  Created by bjzyzl on 2017/6/26.
//  Copyright © 2017年 bjzyzl. All rights reserved.
//

#import "ZYQNaviController.h"

@interface ZYQNaviController ()
@end

@implementation ZYQNaviController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
}

//- (UIInterfaceOrientationMask) navigationControllerSupportedInterfaceOrientations:(UINavigationController *) navigationController{
//    if(self.supportLandscape){
//        return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskLandscapeRight;
//    }else{
//        return UIInterfaceOrientationMaskPortrait;
//    }
//}

//支持旋转
-(BOOL)shouldAutorotate{
    
    return [self.topViewController shouldAutorotate];
}

//支持的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    
    return [self.topViewController supportedInterfaceOrientations];
    
}

@end
