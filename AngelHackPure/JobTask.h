//
//  JobTask.h
//  WiGON_AH
//
//  Created by Khoo Chun Qhai on 6/10/15.
//  Copyright (c) 2015 ChunQhai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JobTask : NSObject

@property (nonatomic, retain) NSString *taskTitle;
@property (nonatomic, retain) NSString *taskDescription;
@property (nonatomic) float taskLongitude;
@property (nonatomic) float taskLatitude;
@property (nonatomic) int budget;

@end
