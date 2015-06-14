//
//  SessionInfo.m
//  WiGON_AH
//
//  Created by Khoo Chun Qhai on 6/10/15.
//  Copyright (c) 2015 ChunQhai. All rights reserved.
//

#import "SessionInfo.h"



static SessionInfo *sessionInfo;

@implementation SessionInfo : NSObject
NSMutableArray *_jobTasks;
NSMutableArray *_shopItems;




+ (SessionInfo *) getSharedInstance
{
    if (sessionInfo == nil) {
        sessionInfo = [[SessionInfo alloc]init];
        _jobTasks = [[NSMutableArray alloc] init];
        _shopItems = [[NSMutableArray alloc]init];
        
        
        
//        for (int i = 0; i < 20; i++)
//        {
//            ShopItem *item = [[ShopItem alloc]init];
//            [item setItemTitle:@"Product 1"];
//            [item setItemDescription:@"Product Description 1"];
//            [item setItemImage:UIImageJPEGRepresentation([UIImage imageNamed:@"item1"], 1)];
//            
//        }
        
        ShopItem *item = [[ShopItem alloc]init];
        [item setItemTitle:@"Louis Vuitton"];
        [item setItemDescription:@"Maison Fondee En 1854 Parish"];
        [item setItemImage:UIImageJPEGRepresentation([UIImage imageNamed:@"LV.jpg"], 1)];
        [item setItemImageName:@"LV.jpg"];
        [item setItemState:@"Pulau Pinang"];
        item.userName = @"Vanessa Rose";
        [item setItemPrice:@"550"];
        [item setItemProfileImageName:@"people1"];
        item.userLocationSentence = @"Subang Jaya";
        [item setItemLongDescription:@"A bag which I consider to be iconic when it comes to rocking classy. It's pretty hard to fina a good replica of Maison Foundee."];
        [item setUserProfileImage:UIImagePNGRepresentation([UIImage imageNamed:@"people1.png"])];
        
        
        
        

        [_shopItems addObject:item];
        
        ShopItem *item2 = [[ShopItem alloc]init];
        [item2 setItemTitle:@"Gucci"];
        [item2 setItemDescription:@"Limited Edition Red Rose wedding Highheel"];
        [item2 setItemImage:UIImageJPEGRepresentation([UIImage imageNamed:@"highheel.jpg"], 1)];
        [item2 setItemImageName:@"highheel.jpg"];
        [item2 setItemPrice:@"1000"];
        item2.userName = @"Jeffrey Holly" ;
        item2.userLocationSentence = @"San Francisco";
        [item setItemProfileImageName:@"people2"];
        [item2 setUserProfileImage:UIImagePNGRepresentation([UIImage imageNamed:@"people2.png"])];
        

        [_shopItems addObject:item2];
        
        ShopItem *item3 = [[ShopItem alloc]init];
        [item3 setItemTitle:@"The Tea House"];
        [item3 setItemDescription:@"5 Types of loose leaf"];
        [item3 setItemImage:UIImageJPEGRepresentation([UIImage imageNamed:@"teahouse.jpg"], 1)];
        [item3 setItemImageName:@"teahouse.jpg"];
        [item3 setItemPrice:@"200"];
        item3.userName = @"Chun Qhai";
        item3.userLocationSentence = @"Paris";
        [item3 setUserProfileImage:UIImagePNGRepresentation([UIImage imageNamed:@"people3.png"])];

        
        [item2 setItemProfileImageName:@"people3"];

        
        [_shopItems addObject:item3];
        
        ShopItem *item4 = [[ShopItem alloc]init];
        [item4 setItemTitle:@"Beats Headphone"];
        [item4 setItemDescription:@"Executive Over-Ear Noise Cancelling Headphones"];
        [item4 setItemImage:UIImageJPEGRepresentation([UIImage imageNamed:@"beats.jpg"], 1)];
        [item4 setItemImageName:@"beats.jpg"];
        [item4 setItemPrice:@"200"];
        [item setItemProfileImageName:@"people4"];
        item4.userName = @"Michael David";
        item4.userLocationSentence = @"Kuala Lumpur";
        [item4 setUserProfileImage:UIImagePNGRepresentation([UIImage imageNamed:@"people4.png"])];


        [_shopItems addObject:item4];
        
        
        
    }
    return sessionInfo;
}

- (NSMutableArray *) getJobTasks{
    return _jobTasks;
}

- (void) addJobTask: (JobTask *) job
{
    [_jobTasks insertObject:job atIndex: 0];
}

- (NSMutableArray *) getShopItems {
    return _shopItems;
}

-(void) addShopItem: (ShopItem *) item
{
    [_shopItems insertObject:item atIndex: 0];
}


   





@end
