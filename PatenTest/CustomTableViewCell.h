//
//  CustomTableViewCell.h
//  PatenTest
//
//  Created by Leo_hsu on 2017/1/15.
//  Copyright © 2017年 Leo_hsu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AbstractDevice.h"

@interface CustomTableViewCell : UITableViewCell

- (void)setDevice: (AbstractDevice *)device;
- (void)showCell;

@end
