//
//  AbstractMediator.h
//  PlaneCommunicationWithMediator
//
//  Created by Dandy on 16/8/8.
//  Copyright © 2016年 Dandy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Plane.h"

@interface AbstractMediator : NSObject

@property (nonatomic, strong) NSMutableArray *planes;//飞机对象的数组

- (void)noticeLocationFromPlane:(Plane *)plane distance:(float)distance;//由子类来实现


@end
