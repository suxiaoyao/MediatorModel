//
//  PlaneC.m
//  PlaneCommunicationWithMediator
//
//  Created by Dandy on 16/8/8.
//  Copyright © 2016年 Dandy. All rights reserved.
//

#import "PlaneC.h"
#import "AbstractMediator.h"

@implementation PlaneC

- (void)noticeLocation {
    
    NSLog(@"C飞机：我的位置是%f,可以降落吗?",self.distance);
    
    [self.mediator noticeLocationFromPlane:self distance:self.distance];
    
}

- (void)recieveLocationWithPlane:(Plane *)plane distance:(float)distance {
    
    NSLog(@"C飞机：距离太近，存在危险，不可以降落");
    
}

@end
