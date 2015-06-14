//
//  ShopItemDetailViewController.m
//  AngelHackKL
//
//  Created by Khoo Chun Qhai on 6/13/15.
//  Copyright (c) 2015 ChunQhai. All rights reserved.
//

#import "ShopItemDetailViewController.h"

@interface ShopItemDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UILabel *itemDescription;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIImageView *userImage;
@property (weak, nonatomic) IBOutlet UITextView *itemLongDescription;
@property (weak, nonatomic) IBOutlet UIButton *mAddToListBtn;
- (IBAction)mAddToListBtnClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *priceRange;
@end

@implementation ShopItemDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.userNameLabel.text = self.item.userName;
    self.locationLabel.text = self.item.userLocationSentence;
    self.itemDescription.text = self.item.itemDescription;
    self.priceRange.text = [NSString stringWithFormat:@"Price Range USD %@",self.item.itemPrice];
    self.imageView.image = [UIImage imageWithData:self.item.itemImage];
    self.userImage.image = [UIImage imageWithData:self.item.userProfileImage];
    self.itemLongDescription.text = self.item.itemLongDescription;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)mAddToListBtnClicked:(id)sender {
    UIAlertView *message = [[UIAlertView alloc]initWithTitle:@"Ops!" message:@"Coming soon. Please stay tuned." delegate:self cancelButtonTitle:@
                            "Okay"otherButtonTitles:nil];
    [message show];
    
}
@end
