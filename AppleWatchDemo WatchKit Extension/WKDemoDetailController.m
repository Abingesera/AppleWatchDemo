//
//  WKDemoDetailController.m
//  AppleWatchDemo
//
//  Created by zsgjs on 15/9/2.
//  Copyright (c) 2015年 zsgjs. All rights reserved.
//

#import "WKDemoDetailController.h"
#define count 0

@interface WKDemoDetailController ()
//标题文本
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *TitleLabel;
//图片
@property (weak, nonatomic) IBOutlet WKInterfaceGroup *GroupImage;
//详情文本
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *DetailLabel;


@end

@implementation WKDemoDetailController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

   //增加一个Menu
    [self addMenuItemWithItemIcon:WKMenuItemIconMore title:@"更多图片" action:@selector(nextImage)];
    //设置标题
    UIFont *font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    UIColor *color = [UIColor whiteColor];
    NSDictionary *dic = @{NSForegroundColorAttributeName:color,NSFontAttributeName:font,NSTextEffectAttributeName:NSTextEffectLetterpressStyle};
    NSAttributedString *attributeStr = [[NSAttributedString alloc]initWithString:@"Apple Watch说明" attributes:dic];
    [self.TitleLabel setAttributedText:attributeStr];
    //设置图片
    [self.GroupImage setBackgroundImage:[UIImage imageNamed:@"02.jpg"]];
    //设置详情
    [self.DetailLabel setText:@"　Apple Watch是苹果公司在今年9月份推出的一款智能手表，产品分为运动款、普通款和定制款三种，同时采用蓝宝石屏幕，为用户提供了银色、金色、红色、绿色和白色，手表会在2015年3月中下旬至6月底上架."];
    

    
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

//Menu点击事件
//动画
- (void)nextImage {
    //切换到动画界面
    [self presentControllerWithName:@"animation" context:nil];
    
}

@end



