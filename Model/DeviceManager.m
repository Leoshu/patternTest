//
//  DeviceManager.m
//  PatenTest
//
//  Created by Leo_hsu on 2017/1/15.
//  Copyright © 2017年 Leo_hsu. All rights reserved.
//

#import "DeviceManager.h"
#import "GassDevice.h"
#import "HeaterDevice.h"
#import "HoodDevice.h"

static DeviceManager *sharedObject;

@interface DeviceManager()
{
    NSArray *deviceList;
}

@end
@implementation DeviceManager

+ (instancetype)sharedInstance
{
    static dispatch_once_t pred;
    dispatch_once(&pred, ^{
        sharedObject = [[self alloc] init];
    });
    return sharedObject;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        deviceList = [[NSArray alloc]initWithObjects:[GassDevice new], [HeaterDevice new], [HoodDevice new], nil];
    }
    return self;
}

- (NSArray<AbstractDevice *> *)getDeviceList
{
    return deviceList;
}

@end
