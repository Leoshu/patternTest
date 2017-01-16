//
//  CustomTableViewCell.m
//  PatenTest
//
//  Created by Leo_hsu on 2017/1/15.
//  Copyright © 2017年 Leo_hsu. All rights reserved.
//

#import "CustomTableViewCell.h"
#import "GassDevice.h"
#import "HeaterDevice.h"
#import "HoodDevice.h"

@interface CustomTableViewCell()
{
    AbstractDevice *m_device;
    __weak IBOutlet UILabel *lb_name;
}

@end

@implementation CustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setDevice: (AbstractDevice *)device
{
    m_device = device;
}

- (void)showCell
{
    if (m_device) {
        [m_device queryInfo:^(id device) {
            if ([device isKindOfClass:[GassDevice class]]) {
                lb_name.text = ((GassDevice *)device).name;
            }
        }];
    }
}

@end
