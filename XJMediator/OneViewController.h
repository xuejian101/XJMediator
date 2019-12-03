//
//  OneViewController.h
//  XJMediator
//
//  Created by 薛健 on 2019/12/3.
//  Copyright © 2019 薛健. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OneViewController : UIViewController

@property (nonatomic ,strong) NSString *message;
@property (nonatomic ,strong) NSDictionary *messageDic;

-(void)getMessage;
+(NSString *)setMessage;
@end

NS_ASSUME_NONNULL_END
