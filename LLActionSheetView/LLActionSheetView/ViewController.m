//
//  ViewController.m
//  LLActionSheetView
//
//  Created by liushaohua on 2017/5/5.
//  Copyright © 2017年 liushaohua. All rights reserved.
//

#import "ViewController.h"
#import "LLActionSheetView.h"

@interface ViewController ()<LLActionSheetDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)actionSheetClick:(id)sender {
    
    NSArray *arr = @[@"相机",@"相册",@"保存图片",@"发送给朋友"];
    
    LLActionSheetView *sheetV = [[LLActionSheetView alloc]initWithTitleArray:arr andShowCancel:YES];
    sheetV.delegate = self;
    // block回调
    sheetV.ClickIndex = ^(NSInteger index) {
        NSLog(@"block--%zd",index);
    };
    [sheetV show];
    
}
// delegate
- (void)actionSheetView:(LLActionSheetView *)actionSheetView clickButtonAtIndex:(NSInteger)Index{
    NSLog(@"delegate--%zd",Index);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
