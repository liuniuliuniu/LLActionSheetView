# LLActionSheetView

![LLActionSheetViewAnim.gif](http://upload-images.jianshu.io/upload_images/1030171-6580fc7249414a67.gif?imageMogr2/auto-orient/strip)

####示例代码
```
// 显示的数组数据
  NSArray *arr = @[@"相机",@"相册",@"保存图片",@"发送给朋友"];
  
  LLActionSheetView *sheetV = [[LLActionSheetView alloc]initWithTitleArray:arr andShowCancel:YES];              
  
// 1.可以设置代理监听点击
  sheetV.delegate = self;  
    
// 2.可以block回调点击
    sheetV.ClickIndex = ^(NSInteger index) {
        NSLog(@"block--%zd",index);
    };
    [self.view.window addSubview:sheetV];
    
// 代理方法    
- (void)actionSheetView:(LLActionSheetView *)actionSheetView clickButtonAtIndex:(NSInteger)Index{
    NSLog(@"delegate--%zd",Index);
}

```