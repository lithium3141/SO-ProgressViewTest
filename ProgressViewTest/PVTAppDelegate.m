//
//  PVTAppDelegate.m
//  ProgressViewTest
//
//  Created by Tim Ekl on 9/11/12.
//  Copyright (c) 2012 Tim Ekl. All rights reserved.
//

#import "PVTAppDelegate.h"
#import "PVTNotifications.h"

@implementation PVTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
{
    [self performSelector:@selector(sendNotification) withObject:nil afterDelay:2.0];
    return YES;
}

- (void)sendNotification {
    [[NSNotificationCenter defaultCenter] postNotificationName:kDownloadedIcon object:nil userInfo:nil];
}

@end
