//
//  ViewController.m
//  PlaneCommunicationWithMediator
//
//  Created by Dandy on 16/8/8.
//  Copyright © 2016年 Dandy. All rights reserved.
//

#import "ViewController.h"
#import "AbstractMediator.h"
#import "ControlCenterMediator.h"
#import "Plane.h"
#import "PlaneA.h"
#import "PlaneB.h"
#import "PlaneC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //初始化飞机对象(同事类对象)
    Plane *planeA = [[PlaneA alloc] init];
    Plane *planeB = [[PlaneB alloc] init];
    Plane *planeC = [[PlaneC alloc] init];
    
    //初始化控制中心(中介者对象)
    AbstractMediator *mediator = [[ControlCenterMediator alloc] init];
    
    //互相持有对象
    [mediator.planes addObject:planeA];
    
    planeA.mediator = mediator;
    
    [mediator.planes addObject:planeB];
    
    planeB.mediator = mediator;
    
    [mediator.planes addObject:planeC];
    
    planeC.mediator = mediator;
    
    //更新飞机的距离
    planeA.distance = 1000.0;
    planeB.distance = 200.0;
    planeC.distance = 500.3;
    
    //发送消息
    [planeA noticeLocation];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
