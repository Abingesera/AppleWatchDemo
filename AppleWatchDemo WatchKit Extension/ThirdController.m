//
//  ThirdController.m
//  AppleWatchDemo
//
//  Created by zsgjs on 15/9/2.
//  Copyright (c) 2015年 zsgjs. All rights reserved.
//

#import "ThirdController.h"

@interface ThirdController ()
@property (weak, nonatomic) IBOutlet WKInterfaceMap *MyMap;

@end

@implementation ThirdController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    //设置地理位置
    CLLocationCoordinate2D location = CLLocationCoordinate2DMake(31.221093, 121.480734);
    //设置跨度(跨度越小，地图越精细)
    MKCoordinateSpan span = MKCoordinateSpanMake(0.5, 0.5);
    MKCoordinateRegion region = MKCoordinateRegionMake(location, span);
    [self.MyMap setRegion:region];
    //添加大头针
    [self.MyMap addAnnotation:location withPinColor:WKInterfaceMapPinColorRed];

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



