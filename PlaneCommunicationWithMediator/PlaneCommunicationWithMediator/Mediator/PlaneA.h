//
//  PlaneA.h
//  PlaneCommunicationWithMediator
//
//  Created by Dandy on 16/8/8.
//  Copyright © 2016年 Dandy. All rights reserved.
//

#import "Plane.h"

@interface PlaneA : Plane

- (void)noticeLocation;//通知其他飞机自己的位置

- (void)recieveLocationWithPlane:(Plane *)plane distance:(float)distance;//接收其他飞机报告的位置

@end
