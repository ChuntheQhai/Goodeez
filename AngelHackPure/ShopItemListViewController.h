//
//  ShopItemListViewController.h
//  AngelHackKL
//
//  Created by Khoo Chun Qhai on 6/13/15.
//  Copyright (c) 2015 ChunQhai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
#import "CustomItemCell.h"
#import "SessionInfo.h"
#import "ShopItem.h"


@interface ShopItemListViewController : BaseViewController <UITableViewDataSource,UITableViewDelegate>


@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
