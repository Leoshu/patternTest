//
//  HeaterDevice.m
//  PatenTest
//
//  Created by Leo_hsu on 2017/1/15.
//  Copyright © 2017年 Leo_hsu. All rights reserved.
//

#import "HeaterDevice.h"

@interface HeaterDevice()
{
    CallBackBlock apiCallBack;
}
@end

@implementation HeaterDevice

- (instancetype)init
{
    self = [super init];
    if (self) {
        //
    }
    return self;
}

#pragma mark - implements abstract methods

- (void)queryInfo:(CallBackBlock)deviceInfo
{
    apiCallBack = deviceInfo;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [self parseInfo:@"我是熱水器"];
    });
}

- (void)parseInfo:(NSString *)jsonStr
{
    //do JSON parsing...
    
    self.name = jsonStr;
    
    dispatch_async(dispatch_get_main_queue(), ^{
        apiCallBack(self);
    });
}
@end
