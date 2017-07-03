//
//  ViewControllerThree.m
//  横屏设置
//
//  Created by bjzyzl on 2017/6/26.
//  Copyright © 2017年 bjzyzl. All rights reserved.
//

#import "ViewControllerThree.h"

@interface ViewControllerThree ()

@end

@implementation ViewControllerThree

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor redColor];
    
    if (self.type == 2) {
        
        UIButton * bottomBtn = [[UIButton alloc]init];
        bottomBtn.frame = CGRectMake(0, self.view.center.y, self.view.frame.size.width, self.view.center.y);
        bottomBtn.backgroundColor = [UIColor greenColor];
        [bottomBtn setTitle:@"返回" forState:UIControlStateNormal];
        [bottomBtn addTarget:self action:@selector(bottomClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:bottomBtn];
    }
}

-(void)bottomClick
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
