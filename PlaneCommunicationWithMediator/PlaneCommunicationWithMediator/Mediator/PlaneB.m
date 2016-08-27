//
//  PlaneB.m
//  PlaneCommunicationWithMediator
//
//  Created by Dandy on 16/8/8.
//  Copyright © 2016年 Dandy. All rights reserved.
//

#import "PlaneB.h"
#import "AbstractMediator.h"

@implementation PlaneB

- (void)noticeLocation {
    
    NSLog(@"B飞机：我的位置是%f,可以降落吗?",self.distance);
    
    [self.mediator noticeLocationFromPlane:self distance:self.distance];
    
}

- (void)recieveLocationWithPlane:(Plane *)plane distance:(float)distance {
    
    NSLog(@"B飞机：距离正常，没有危险，可以降落");
    
}

@end
