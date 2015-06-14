//
//  BaseViewController.h
//  WiGON_AH
//
//  Created by Khoo Chun Qhai on 6/10/15.
//  Copyright (c) 2015 ChunQhai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HUD.h"
#import "SessionInfo.h"

@interface BaseViewController : UIViewController

-(void) goBack;
-(void) gotoView : (NSString *)storyBoardId;
-(UIColor*)colorWithHexString:(NSString*)hex;

@end
