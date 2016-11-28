//
//  SecondDemoRow.h
//  AppleWatchDemo
//
//  Created by zsgjs on 15/9/2.
//  Copyright (c) 2015年 zsgjs. All rights reserved.
//

#import <Foundation/Foundation.h>
@import WatchKit;

@interface SecondDemoRow : NSObject
//图片
@property (weak, nonatomic) IBOutlet WKInterfaceImage *DemoImage;
//文本
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *DemoLabel;

@end
