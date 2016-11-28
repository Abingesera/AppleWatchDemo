//
//  AnimationController.m
//  AppleWatchDemo
//
//  Created by zsgjs on 15/9/2.
//  Copyright (c) 2015年 zsgjs. All rights reserved.
//

#import "AnimationController.h"

@interface AnimationController ()
@property (weak, nonatomic) IBOutlet WKInterfaceImage *MyImage;

@end

@implementation AnimationController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    //设置动画图片
    NSMutableArray *images = [NSMutableArray arrayWithCapacity:6];
    for (int i = 1; i < 7; i++) {
        NSString *name = [NSString stringWithFormat:@"0%d.jpg",i];
        UIImage *image = [UIImage imageNamed:name];
        [images addObject:image];
    }
    UIImage *img = [UIImage animatedImageWithImages:images duration:5];
    [self.MyImage setImage:img];
    NSRange range = NSMakeRange(0, 5);
    //开始动画
    [self.MyImage startAnimatingWithImagesInRange:range duration:5 repeatCount:-1];

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

@end



