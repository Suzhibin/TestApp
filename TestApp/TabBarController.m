//
//  TabBarController.m
//  TestApp
//
//  Created by Suzhibin on 2019/7/12.
//  Copyright © 2019 Suzhibin. All rights reserved.
//

#import "TabBarController.h"
#import "TestAViewController.h"
#import "TestBViewController.h"
#import "TestCViewController.h"
@interface TabBarController ()

@end

@implementation TabBarController
+ (void)initialize
{
    UITabBarItem *appearance = [UITabBarItem appearance];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    [appearance setTitleTextAttributes:attrs forState:UIControlStateSelected];
    
    //   [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"tabbar-light"]];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    TestAViewController *testA=[[TestAViewController alloc]init];
    [self setupChildViewController:testA title:@"testA"];
    
    TestBViewController *testB=[[TestBViewController alloc]init];
    [self setupChildViewController:testB title:@"testB"];

    TestCViewController *testC=[[TestCViewController alloc]init];
    [self setupChildViewController:testC title:@"testC"];
}
- (void)setupChildViewController:(UIViewController *)vc title:(NSString *)title
{
    vc.title = title;
 
    [self addChildViewController:[[UINavigationController alloc] initWithRootViewController:vc]];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
