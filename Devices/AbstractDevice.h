//
//  AbstractDevice.h
//  PatenTest
//
//  Created by Leo_hsu on 2017/1/15.
//  Copyright © 2017年 Leo_hsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbstractDevice : NSObject

typedef void (^CallBackBlock)(id device);

- (void)queryInfo:(CallBackBlock)deviceInfo;
- (void)parseInfo:(NSString *)jsonStr;

@end
