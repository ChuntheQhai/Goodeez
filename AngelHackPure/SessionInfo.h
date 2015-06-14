//
//  SessionInfo.h
//  WiGON_AH
//
//  Created by Khoo Chun Qhai on 6/10/15.
//  Copyright (c) 2015 ChunQhai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JobTask.h"
#import "ShopItem.h"
#import <UIKit/UIKit.h>

@interface SessionInfo : NSObject

+ (SessionInfo *) getSharedInstance;
- (NSMutableArray *) getJobTasks;
- (void) addJobTask: (JobTask *) job;

- (NSMutableArray *) getShopItems;
-(void) addShopItem: (ShopItem *) item;


@end
