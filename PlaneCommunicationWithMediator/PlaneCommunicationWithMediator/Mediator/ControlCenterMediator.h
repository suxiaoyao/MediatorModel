//
//  ControlCenterMediator.h
//  PlaneCommunicationWithMediator
//
//  Created by Dandy on 16/8/8.
//  Copyright © 2016年 Dandy. All rights reserved.
//

#import "AbstractMediator.h"

@interface ControlCenterMediator : AbstractMediator

- (void)noticeLocationFromPlane:(Plane *)plane distance:(float)distance;//重写父类发送消息方法

@end
