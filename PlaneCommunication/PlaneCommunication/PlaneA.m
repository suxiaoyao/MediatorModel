//
//  PlaneA.m
//  PlaneCommunication
//
//  Created by Dandy on 16/8/8.
//  Copyright © 2016年 Dandy. All rights reserved.
//

#import "PlaneA.h"
#import "PlaneB.h"
#import "PlaneC.h"

@implementation PlaneA

//重写父类发送的方法，实现自己的逻辑处理
- (void)noticeLocation {
    
    NSLog(@"A飞机：我的位置是%f,可以降落吗?",self.distance);
    
    [self.planeB recieveLocationWithPlane:self distance:self.distance];
    [self.planeC recieveLocationWithPlane:self distance:self.distance];
    
}

//重写父类接收的方法，实现自己的逻辑处理
- (void)recieveLocationWithPlane:(Plane *)plane distance:(float)distance {
    
    NSLog(@"A飞机：距离正常，没有危险，可以降落");
    
}

@end
