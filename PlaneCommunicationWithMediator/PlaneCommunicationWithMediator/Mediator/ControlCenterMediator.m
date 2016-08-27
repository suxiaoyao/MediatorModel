//
//  ControlCenterMediator.m
//  PlaneCommunicationWithMediator
//
//  Created by Dandy on 16/8/8.
//  Copyright © 2016年 Dandy. All rights reserved.
//

#import "ControlCenterMediator.h"

@implementation ControlCenterMediator

- (void)noticeLocationFromPlane:(Plane *)plane distance:(float)distance {
    
    [self.planes enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
       
        if (![obj isEqual:plane]) {
            
            [(Plane *)obj recieveLocationWithPlane:plane distance:distance];
            
        }
        
    }];
    
}

@end
