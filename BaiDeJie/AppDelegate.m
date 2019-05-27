//
//  AppDelegate.m
//  BaiDeJie
//
//  Created by Lun Wei on 2019/5/28.
//  Copyright © 2019 Lun Wei. All rights reserved.
//

#import "AppDelegate.h"
#import "classes/Essence/Contorller/XMGEssenceViewController.h"
#import "classes/FriendTrend/Contorller/XMGFriendTrendController.h"
#import "classes/Publish/Contorller/XMGPublishViewController.h"
#import "classes/Me/Contorller/XMGMeViewController.h"
#import "classes/New/Contorller/XMGNewViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


static void addNavigationView(UIViewController *viewController,
                              UITabBarController *tabBarVc,
                              NSString *title,
                              NSString *imageName,
                              NSString *selectedImageName) {
    UINavigationController *navController = [[UINavigationController alloc] init];
    
    navController.tabBarItem.title = title;
    navController.tabBarItem.image = [UIImage imageNamed:imageName];
    NSLog(@"Image %@", [UIImage imageNamed:imageName]);
    navController.tabBarItem.selectedImage = [UIImage imageNamed :selectedImageName];
    [navController addChildViewController:viewController];
    [tabBarVc addChildViewController:navController];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //1： create the window
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
   
    //2: set the root controller
    UITabBarController *tabBarVc = [[UITabBarController alloc] init];
    self.window.rootViewController = tabBarVc;
    
    // 2.1 添加5个子控制器
    XMGEssenceViewController *essenceViewControlelr = [[XMGEssenceViewController alloc] init];
    addNavigationView(essenceViewControlelr, tabBarVc,@"精华", @"tarBar_essence_icon", @"tarBar_essence_click_icon");
    
    XMGFriendTrendController *friendTrendViewController = [[XMGFriendTrendController alloc] init];
    addNavigationView(friendTrendViewController, tabBarVc, @"关注", @"tarBar_friendTrends_icon", @"tarBar_friendTrends_click_icon");
    
    XMGPublishViewController *publishVC = [[XMGPublishViewController alloc] init];
    addNavigationView(publishVC, tabBarVc, @"发布", @"tarBar_publish_icon", @"tarBar_publish_click_icon");
    
    XMGMeViewController *meVc = [[XMGMeViewController alloc] init];
    addNavigationView(meVc, tabBarVc, @"我", @"tarBar_me_icon", @"tarBar_me_click_icon");

    XMGNewViewController *newVc = [[XMGNewViewController alloc] init];
    addNavigationView(newVc, tabBarVc, @"新帖", @"tarBar_new_icon", @"tarBar_new_click_icon");
    
    // 3 显示window
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
