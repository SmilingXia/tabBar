//
//  AppDelegate.m
//  ZDYTabBar
//
//  Created by xia on 2017/2/24.
//  Copyright © 2017年 cn.bkw. All rights reserved.
//

#import "AppDelegate.h"
#import "ZDYTabBarController.h"
#import "ViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    ZDYTabBarController *tabBarVC = [[ZDYTabBarController alloc] init];
    
    UIViewController *vc = [[ViewController alloc] init];
    UINavigationController *nc = [[UINavigationController alloc]initWithRootViewController:vc];
    
    UIViewController *vc1 = [[ViewController1 alloc] init];
    UINavigationController *nc1 = [[UINavigationController alloc]initWithRootViewController:vc1];
    
    UIViewController *vc2 = [[ViewController2 alloc] init];
    UINavigationController *nc2 = [[UINavigationController alloc]initWithRootViewController:vc2];
    
    [tabBarVC setViewControllers:@[nc,nc1,nc2]];
    
    NSArray *tabBarItemTitle = @[@"练习", @"测验", @"个人"];
    NSArray *tabBarItemImages = @[@"exercises", @"test", @"personal"];
    [tabBarVC setTabBarInfoArray:@[tabBarItemTitle,tabBarItemImages]];
    
    
    self.window.rootViewController = tabBarVC;
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
