//
//  CustomItemCell.m
//  AngelHackKL
//
//  Created by Khoo Chun Qhai on 6/13/15.
//  Copyright (c) 2015 ChunQhai. All rights reserved.
//

#import "CustomItemCell.h"

@implementation CustomItemCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
