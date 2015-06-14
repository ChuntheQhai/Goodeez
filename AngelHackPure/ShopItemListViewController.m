//
//  ShopItemListViewController.m
//  AngelHackKL
//
//  Created by Khoo Chun Qhai on 6/13/15.
//  Copyright (c) 2015 ChunQhai. All rights reserved.
//

#import "ShopItemListViewController.h"
#import "ShopItemDetailViewController.h"


@interface ShopItemListViewController () {
    NSMutableArray *shopItems;
}

@end

@implementation ShopItemListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    

    
    shopItems = [[SessionInfo getSharedInstance] getShopItems];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
;
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomItemCell *cell = [tableView dequeueReusableCellWithIdentifier:@"shopItemCell"];
    ShopItem *item = [shopItems objectAtIndex:[indexPath row]];
    
    
    cell.itemTItle.text = item.itemTitle;
    cell.itemTItle.textColor = [UIColor whiteColor];
    cell.itemDescription.text = item.itemDescription;
    cell.itemDescription.textColor = [UIColor whiteColor];
    cell.itemImage.image = [UIImage imageWithData:item.itemImage];
    cell.itemUserProfileImage.image = [UIImage imageWithData:item.userProfileImage];
    cell.itemUserLocation.text = item.userLocationSentence;
    cell.itemPriceRange.text = item.itemPrice;
    
    
    
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];

    
//    cell.itemAcceptBtn.tag = [indexPath row];
//    [cell.itemAcceptBtn addTarget:self action:@selector(acceptBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ShopItemDetailViewController* detailViewCon =  [storyBoard instantiateViewControllerWithIdentifier:@"ShopItemDetailViewController"];
    detailViewCon.item = shopItems[indexPath.row];
    [self.navigationController pushViewController:detailViewCon animated:true];
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [shopItems count];
}





-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 205;
}

-(void) acceptBtnClicked:(id) sender {
    if ([sender tag] == 0)
    {
        NSLog(@"Tag = 0");
        [self gotoView:@"ShopItemDetailViewController"];
        
    }
    else {
        NSLog(@"Tag = 1");
    }
    //[self gotoView:@"ShopItemListViewController"];
}




@end
