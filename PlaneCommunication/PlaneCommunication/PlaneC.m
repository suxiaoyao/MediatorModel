//
//  PlaneC.m
//  PlaneCommunication
//
//  Created by Dandy on 16/8/8.
//  Copyright © 2016年 Dandy. All rights reserved.
//

#import "PlaneC.h"
#import "PlaneA.h"
#import "PlaneB.h"

@implementation PlaneC

//重写父类发送的方法，实现自己的逻辑处理
- (void)noticeLocation {
    
    NSLog(@"C飞机：我的位置是%f,可以降落吗?",self.distance);
    
    [self.planeA recieveLocationWithPlane:self distance:self.distance];
    [self.planeB recieveLocationWithPlane:self distance:self.distance];
    
}

//重写父类接收的方法，实现自己的逻辑处理
- (void)recieveLocationWithPlane:(Plane *)plane distance:(float)distance {
    
    NSLog(@"C飞机：距离太近，存在危险，不可以降落");
    
}

@end
