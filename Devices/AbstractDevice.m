//
//  AbstractDevice.m
//  PatenTest
//
//  Created by Leo_hsu on 2017/1/15.
//  Copyright © 2017年 Leo_hsu. All rights reserved.
//

#import "AbstractDevice.h"

@implementation AbstractDevice

- (id)init
{
    if ([self class] == [AbstractDevice class]) {
        @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                       reason:@"Attempting to instantiate AbstractClass directly." userInfo:nil];
    }
    
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)queryInfo:(CallBackBlock)deviceInfo
{
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   reason:[NSString stringWithFormat:@"You must override %@ in a subclass.",
                                           NSStringFromSelector(_cmd)]
                                 userInfo:nil];
}

- (void)parseInfo:(NSString *)jsonStr
{
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   reason:[NSString stringWithFormat:@"You must override %@ in a subclass.",
                                           NSStringFromSelector(_cmd)]
                                 userInfo:nil];
}

@end
