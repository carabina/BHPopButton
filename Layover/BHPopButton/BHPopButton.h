//
//  CustomeBottomView.h
//  Layover
//
//  Created by ios on 11/23/16.
//  Copyright © 2016 ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BHPopButton;

typedef void(^EventBlock)(BHPopButton *view);

typedef void(^ItemSelectedBlock)(BHPopButton *view,NSUInteger index,NSString *itemContent);

@interface BHPopButton : UIButton
{
  
  BOOL pressed;
  
  EventBlock longPressBlock;
    
  EventBlock clickBlock;
    
    ItemSelectedBlock selectBlock;
  
  NSDate *lastClickDate;
    
    UIView *_popView;
  
}

- (void)setOnLongPressBlock:(void (^)(BHPopButton *view))block;

- (void)setOnSubItemSelected:(void (^)(BHPopButton *view,NSUInteger index,NSString *itemContent))block;

- (void)setOnClickBlock:(void (^)(BHPopButton *view))block;

@property (nonatomic,strong) NSArray *optionsArray;

@property (nonatomic) NSTimeInterval longPressTimeInterval;

@property (nonatomic,strong) UIFont *fontForOptions;

@end
