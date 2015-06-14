//
//  CustomItemCell.h
//  AngelHackKL
//
//  Created by Khoo Chun Qhai on 6/13/15.
//  Copyright (c) 2015 ChunQhai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomItemCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *itemImage;
@property (weak, nonatomic) IBOutlet UILabel *itemTItle;
@property (weak, nonatomic) IBOutlet UILabel *itemDescription;
@property (weak, nonatomic) IBOutlet UIButton *itemAcceptBtn;
@property (weak, nonatomic) IBOutlet UIImageView *itemUserProfileImage;
@property (weak, nonatomic) IBOutlet UILabel *itemUserLocation;
@property (weak, nonatomic) IBOutlet UILabel *itemPriceRange;

@end
