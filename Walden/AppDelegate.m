//
//  AppDelegate.m
//  Walden
//
//  Created by Kristina Varshavskaya on 7/1/14.
//  Copyright (c) 2014 kristinatastic. All rights reserved.
//

#import "AppDelegate.h"
#import "ComposerViewController.h"
#import "SavedViewController.h"

@interface AppDelegate()

@property (nonatomic, strong) NSMutableArray *viewControllers;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    UIPageViewController *pageViewController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    pageViewController.dataSource = self;
    
    ComposerViewController *composerViewController = [[ComposerViewController alloc] init];
    composerViewController.backgroundName = @"background1";
    
    
    
    self.viewControllers = [[NSMutableArray alloc] init];
    self.viewControllers = [NSMutableArray arrayWithObjects:composerViewController, nil];
    
    [pageViewController setViewControllers:@[composerViewController] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    
    self.window.rootViewController = pageViewController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    int currentView = [self.viewControllers indexOfObject:viewController];
    
    if (currentView > 0) {
        
        return [self.viewControllers objectAtIndex:currentView - 1];
    } else {
        return nil;
    }
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    int currentView = [self.viewControllers indexOfObject:viewController];
    
    if (currentView < self.viewControllers.count) {
        
        ComposerViewController *composerViewController = [[ComposerViewController alloc] init];
        
        int background = arc4random_uniform(7);
        
        if (background == 0) {
            composerViewController.backgroundName = @"background1";
        } else if (background == 1) {
            composerViewController.backgroundName = @"background2";
        } else if (background == 2) {
            composerViewController.backgroundName = @"background3";
        } else if (background == 3) {
            composerViewController.backgroundName = @"background4";
        } else if (background == 4) {
            composerViewController.backgroundName = @"background5";
        } else if (background == 5) {
            composerViewController.backgroundName = @"background6";
        } else if (background == 6) {
            composerViewController.backgroundName = @"background7";
        }
        
        //UIView *noteView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
        [self.viewControllers addObject:composerViewController];
        NSLog(@"%@", self.viewControllers);
        
        
        return [self.viewControllers objectAtIndex:currentView + 1];
    } else {
        return nil;
    }
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
