//
//  SecondController.m
//  AppleWatchDemo
//
//  Created by zsgjs on 15/9/2.
//  Copyright (c) 2015年 zsgjs. All rights reserved.
//

#import "SecondController.h"
#import "SecondDemoRow.h"

@interface SecondController ()
//第一种cell
@property (weak, nonatomic) IBOutlet WKInterfaceTable *FirstTable;
//第二种cell
@property (weak, nonatomic) IBOutlet WKInterfaceTable *SecondTable;

@end

@implementation SecondController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    //第一种cell加载一个
    [self.FirstTable setNumberOfRows:1 withRowType:@"firstRow"];
    //第二种cell加载两个
    [self.SecondTable setNumberOfRows:2 withRowType:@"secondRow"];
//    //为第二种cell设置不同的图片和文本
//    SecondDemoRow *row = [self.SecondTable rowControllerAtIndex:0];
//    [row.DemoImage setImageNamed:@"01.jpg"];
//    UIFont *font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
//    UIColor *color = [UIColor redColor];
//    NSDictionary *dic = @{NSForegroundColorAttributeName:color,NSFontAttributeName:font,NSTextEffectAttributeName:NSTextEffectLetterpressStyle};
//    NSAttributedString *attributeStr = [[NSAttributedString alloc]initWithString:@"Apple Watch" attributes:dic];
//    [row.DemoLabel setAttributedText:attributeStr];
//
//    
//
//    SecondDemoRow *anotherRow = [self.SecondTable rowControllerAtIndex:1];
//    [anotherRow.DemoImage setImageNamed:@"02.jpg"];
//    [anotherRow.DemoLabel setText:@"Apple"];
    
//    //官方API提供的方法
//    NSArray *itemTexts = @[@"Apple",@"Watch"];
//    NSArray *itemImages = @[@"01.jpg",@"02.jpg"];
//    for (int i = 0; i < 2; i++) {
//        NSString *itemText = itemTexts[i];
//        NSString *itemImage = itemImages[i];
//        SecondDemoRow *row = [self.SecondTable rowControllerAtIndex:i];
//        [row.DemoLabel setText:itemText];
//        [row.DemoImage setImageNamed:itemImage];
//    }
    
    //添加两个Menu(功能为一个为添加cell，一个为删除cell)
    [self addMenuItemWithItemIcon: WKMenuItemIconAdd title:@"添加cell" action:@selector(add)];
    [self addMenuItemWithItemIcon:WKMenuItemIconDecline title:@"删除cell" action:@selector(delete)];
    
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}
//点击cell事件
-(void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex {
    NSLog(@"%ld",rowIndex);
    if ((rowIndex == 0) & [table isEqual:self.FirstTable]) {
        //跳转到多个界面
        [self presentControllerWithNames:@[@"third",@"forth"] contexts:nil];
    }else if((rowIndex == 0) & [table isEqual:self.SecondTable]){
        NSLog(@"123456789");
    }else {
        NSLog(@"00000000");
    }
}

//添加cell
- (void)add {
    [self.FirstTable insertRowsAtIndexes:[NSIndexSet indexSetWithIndex:0] withRowType:@"firstRow"];
}
//删除cell
- (void)delete {
    [self.SecondTable removeRowsAtIndexes:[NSIndexSet indexSetWithIndex:0]];
}

@end



