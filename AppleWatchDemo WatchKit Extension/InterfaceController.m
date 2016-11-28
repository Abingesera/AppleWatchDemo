//
//  InterfaceController.m
//  AppleWatchDemo WatchKit Extension
//
//  Created by zsgjs on 15/9/2.
//  Copyright (c) 2015年 zsgjs. All rights reserved.
//

#import "InterfaceController.h"
#import "DemoRow.h"
#import "WKDemoDetailController.h"

@interface InterfaceController()

@property (weak, nonatomic) IBOutlet WKInterfaceTable *MyTable;


@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    //设置只有一个cell
    [self.MyTable setNumberOfRows:1 withRowType:@"DemoRow"];
    DemoRow *demoRow = [self.MyTable rowControllerAtIndex:0];

    
    //使用属性设置标题文本内容
    UIFont *font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    UIColor *color = [UIColor redColor];
    NSDictionary *dic = @{NSForegroundColorAttributeName:color,NSFontAttributeName:font,NSTextEffectAttributeName:NSTextEffectLetterpressStyle};
    NSAttributedString *attributeStr = [[NSAttributedString alloc]initWithString:@"Apple Watch" attributes:dic];
    [demoRow.TitleLabel setAttributedText:attributeStr];
    //设置背景图片
    [demoRow.DemoImage setBackgroundImage:[UIImage imageNamed:@"02.jpg"]];
    
    //设置计时器
    [demoRow.DemoTimer setDate:[NSDate date]];
    [demoRow.DemoTimer start];

    

}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

//cell点击事件
-(void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex {

    //通过storyboard里试图的identifier跳转
    [self presentControllerWithName:@"detail" context:nil];
}
@end



