//
//  ViewController.m
//  Layover
//
//  Created by ios on 11/23/16.
//  Copyright © 2016 ios. All rights reserved.
//

#import "ViewController.h"
#import "BHPopView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
    
    
    [bottomView setTitle:@"gggg" forState:UIControlStateNormal];
  
    bottomView.optionsArray = @[@"A",@"B",@"C"];
    
//  [bottomView setOnLongPressBlock:^(BHPopButton *view) {
//    
//    BHPopView *Aview = [[BHPopView alloc]initWithFrame:CGRectMake(100, 90, 100, 200)];
//    
//    Aview.center = bottomView.center;
//      
//      Aview.chars = @[@"A",@"B",@"C"];
//    
//    Aview.backgroundColor = [UIColor redColor];
//      
//      [Aview sizeToFit];
//    
//    view.popView = Aview;
//      
//      [Aview setUpInsideBlock:^(BHPopView *view,UILabel *labelSelected) {
//          
//          NSLog(@"起来了,选中%@",labelSelected.text);
//          
//      }];
//    
//    [self.view addSubview:Aview];
//    
//    
//  }];
    
    
    [bottomView setOnClickBlock:^(BHPopButton *view) {
        
        NSLog(@"点击了 %@",view.titleLabel.text);
        
    }];
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)longPress:(UILongPressGestureRecognizer *)sender {
  
  
  static UIView *view = nil;
  
  if ([sender state] == UIGestureRecognizerStateBegan) {

    [sender.view resignFirstResponder];
    
    view = [[BHPopView alloc]initWithFrame:CGRectMake(100, 90, 200, 100)];
    
    view.center = sender.view.center;
    
    view.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:view];
    
    [view becomeFirstResponder];
    
  }
  
  if (sender.state == UIGestureRecognizerStateChanged) {
    
    sender.view.userInteractionEnabled = NO;
    
    [view becomeFirstResponder];
    
    NSLog(@"UIGestureRecognizerStateChanged");
    
  }
  
//  NSLog(@"%d",sender.state);
  
  if ([sender state] == UIGestureRecognizerStateEnded) {
    
    sender.view.userInteractionEnabled = YES;
    
  }
  
}


@end
