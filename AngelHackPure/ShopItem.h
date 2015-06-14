//
//  ShopItem.h
//  AngelHackPure
//
//  Created by Khoo Chun Qhai on 6/13/15.
//  Copyright (c) 2015 ChunQhai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShopItem : NSObject

@property (nonatomic, retain) NSString *itemTitle;
@property (nonatomic, retain) NSString *itemModel;
@property (nonatomic, retain) NSString *itemState;
@property (nonatomic, retain) NSString *itemDescription;
@property (nonatomic, retain) NSString *itemPrice;
@property (nonatomic, retain) NSData *itemImage;
@property (nonatomic, retain) NSString *itemImageName;
@property (nonatomic, retain) NSString *itemProfileImageName;
@property (nonatomic, strong) NSString *userName;
@property (nonatomic, strong) NSString *userLocationSentence;
@property (nonatomic, strong) NSData *userProfileImage;
@property (nonatomic, strong) NSString *itemLongDescription;




@end
