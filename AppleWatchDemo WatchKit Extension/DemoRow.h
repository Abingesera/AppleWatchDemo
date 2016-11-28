//
//  DemoRow.h
//  AppleWatchDemo
//
//  Created by zsgjs on 15/9/2.
//  Copyright (c) 2015年 zsgjs. All rights reserved.
//

#import <Foundation/Foundation.h>
@import WatchKit;
@interface DemoRow : NSObject

//标题
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *TitleLabel;
//背景图片
@property (weak, nonatomic) IBOutlet WKInterfaceGroup *DemoImage;
//计时器
@property (weak, nonatomic) IBOutlet WKInterfaceTimer *DemoTimer;
@end
