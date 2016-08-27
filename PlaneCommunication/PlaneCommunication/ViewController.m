//
//  ViewController.m
//  PlaneCommunication
//
//  Created by Dandy on 16/8/8.
//  Copyright © 2016年 Dandy. All rights reserved.
//

#import "ViewController.h"
#import "PlaneA.h"
#import "PlaneB.h"
#import "PlaneC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //初始化飞机对象
    PlaneA *planeA = [[PlaneA alloc] init];
    PlaneB *planeB = [[PlaneB alloc] init];
    PlaneC *planeC = [[PlaneC alloc] init];
    
    //需要互相持有对象才能发送接收消息
    planeA.planeB = planeB;
    planeA.planeC = planeC;
    
    planeB.planeA = planeA;
    planeB.planeC = planeC;
    
    planeC.planeA = planeA;
    planeC.planeB = planeB;
    
    //更新飞机的位置
    planeA.distance = 100.0;
    planeB.distance = 300.0;
    planeC.distance = 1000.0;
    
    
    [planeA noticeLocation];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
