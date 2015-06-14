//
//  TakePhotoViewController.h
//  AngelHackPure
//
//  Created by Khoo Chun Qhai on 6/13/15.
//  Copyright (c) 2015 ChunQhai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"

@interface TakePhotoViewController : BaseViewController<UIActionSheetDelegate,UIImagePickerControllerDelegate>

@property (nonatomic, retain) NSString *itemCountry;
@property (nonatomic, retain) NSString *itemName;
@property (nonatomic, retain) NSString *itemModel;
@property (nonatomic, retain) NSString *itemStates;
@property (nonatomic, retain) NSString *itemDescription;
@property (nonatomic, retain) NSString *itemPrice;






@end
