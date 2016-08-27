//
//  Plane.m
//  PlaneCommunication
//
//  Created by Dandy on 16/8/8.
//  Copyright © 2016年 Dandy. All rights reserved.
//

#import "Plane.h"

@implementation Plane

- (void)noticeLocation {
    NSLog(@"通知其他飞机自己的位置");
}

- (void)recieveLocationWithPlane:(Plane *)plane distance:(float)distance {
    NSLog(@"接收到其他飞机的位置");
}

@end
