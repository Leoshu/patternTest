//
//  DeviceManager.h
//  PatenTest
//
//  Created by Leo_hsu on 2017/1/15.
//  Copyright © 2017年 Leo_hsu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractDevice.h"

@interface DeviceManager : NSObject

+ (instancetype)sharedInstance;
- (NSArray<AbstractDevice *> *)getDeviceList;

@end
