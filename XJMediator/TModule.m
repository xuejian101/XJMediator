//
//  TModule.m
//  XJMediator
//
//  Created by 薛健 on 2019/12/3.
//  Copyright © 2019 薛健. All rights reserved.
//

#import "TModule.h"
#import "AppDelegateMediator.h"
@implementation TModule
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    NSLog(@"qweqweqwe");

    return YES;
}
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken{
    
    NSString* token  = [[[[deviceToken description]
                          stringByReplacingOccurrencesOfString:@"<" withString:@""]
                         stringByReplacingOccurrencesOfString:@">" withString:@""]
                        stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSLog(@"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n deviceToken:\n\n %@\n\n\%@n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",token ,[[UIDevice currentDevice] systemVersion]);
    
}
- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"43132131");
}
@end

