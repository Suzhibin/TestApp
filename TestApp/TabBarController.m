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
//     [[UITabBar appearance] setTranslucent:NO];
//    self.tabBar.tintColor = [UIColor redColor];
//    self.tabBar.barTintColor = [UIColor whiteColor];
    TestAViewController *testA=[[TestAViewController alloc]init];
    [self setupChildViewController:testA title:@"testA" image:@"" selectedImage:@""];
    
    TestBViewController *testB=[[TestBViewController alloc]init];
    [self setupChildViewController:testB title:@"testB" image:@"" selectedImage:@""];
    
    TestCViewController *testC=[[TestCViewController alloc]init];
    [self setupChildViewController:testC title:@"testC" image:@"" selectedImage:@""];
}
- (void)setupChildViewController:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
   vc.title = title;
   
//    vc.tabBarItem.image=[[UIImage imageNamed:image]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    vc.tabBarItem.selectedImage=[[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // vc.tabBarItem.badgeValue =@"";//角标
    // vc.tabBarItem.imageInsets = UIEdgeInsetsMake(8, 0, -8, 0);//设置按钮上下
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
