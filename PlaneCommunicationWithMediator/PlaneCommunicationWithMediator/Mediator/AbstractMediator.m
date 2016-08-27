//
//  AbstractMediator.m
//  PlaneCommunicationWithMediator
//
//  Created by Dandy on 16/8/8.
//  Copyright © 2016年 Dandy. All rights reserved.
//

#import "AbstractMediator.h"

@implementation AbstractMediator

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.planes = [NSMutableArray array];
    }
    return self;
}

- (void)noticeLocationFromPlane:(Plane *)plane distance:(float)distance {
    
    NSLog(@"通知其他飞机自己的位置");
    
}

@end
