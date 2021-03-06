//
//  PlaneA.h
//  PlaneCommunication
//
//  Created by Dandy on 16/8/8.
//  Copyright © 2016年 Dandy. All rights reserved.
//

#import "Plane.h"

@class PlaneB, PlaneC;
@interface PlaneA : Plane

@property (nonatomic, weak) PlaneB *planeB;//持有B飞机对象的引用才能通信

@property (nonatomic, weak) PlaneC *planeC;//持有C飞机对象的引用才能通信

- (void)noticeLocation;//重写父类发送消息方法

- (void)recieveLocationWithPlane:(Plane *)plane distance:(float)distance;//重写父类接收消息的方法

@end
