//
//  AppDelegateMediator.h
//  XJMediator
//
//  Created by 薛健 on 2019/12/3.
//  Copyright © 2019 薛健. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface AppDelegateMediator : NSObject<UIApplicationDelegate>
+ (instancetype)sharedInstance;
- (void)registerModuleWithClass:(NSString *)className;
- (void)removeModuleWithClass:(NSString *)className;
@end

NS_ASSUME_NONNULL_END
