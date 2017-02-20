# BHPopButton
Button With Pop OptionView<br>
在CocoaTouch上实现了模仿各主流输入法弹出可弹出扩展选项菜单功能的Button控件<br>
##效果图
![](http://i.niupic.com/images/2017/02/20/VApNpv.gif)
##使用方法
```Objective-C
    BHPopButton *popButton = [BHPopButton buttonWithType:UIButtonTypeCustom];
    
    popButton.frame = CGRectMake(33, 200, 100, 100);
    
    [popButton setTitle:@"popButton" forState:UIControlStateNormal];

    //设置次级选项的内容
    popButton.optionsArray = @[@"A",@"B",@"C",@"ABC",@"Congo"];
    
    //设置次级选项做出选择后的操作
    [popButton setOnSubItemSelected:^(BHPopButton *view, NSUInteger index, NSString *itemContent) {

        //TODO
        
    }];
    
    //设置单击后做出的操作
    [popButton setOnClickBlock:^(BHPopButton *view) {
        
        //TODO
        
    }];
