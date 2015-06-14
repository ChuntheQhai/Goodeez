//
//  TakePhotoViewController.m
//  AngelHackPure
//
//  Created by Khoo Chun Qhai on 6/13/15.
//  Copyright (c) 2015 ChunQhai. All rights reserved.
//

#import "TakePhotoViewController.h"

@interface TakePhotoViewController ()<UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *mChoosePhoto;
@property (weak, nonatomic) IBOutlet UIImageView *UploadImage;
- (IBAction)mSubmitBtn:(id)sender;

@end

@implementation TakePhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //[self.mChoosePhoto setBackgroundImage:[UIImage imageNamed:@"add 2"] forState:UIControlStateNormal];
    [self.mChoosePhoto addTarget:self action:@selector(addPhotoButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    NSLog(@"%@",_itemName);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) addPhotoButtonPressed
{
    UIActionSheet *popup = [[UIActionSheet alloc] initWithTitle:@"Select Sharing option:" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:
                            @"Choose Photo",
                            @"Take Photo",
                            nil];
    popup.tag = 1;
    [popup showInView:[UIApplication sharedApplication].keyWindow];
    

}

- (void)actionSheet:(UIActionSheet *)popup clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    switch (popup.tag) {
        case 1: {
            switch (buttonIndex) {
                case 0:
                    [self choosePhoto];
                    break;
                case 1:
                    [self takePhoto];
                    break;
                default:
                    break;
            }
            break;
        }
        default:
            break;
    }
}

-(void) choosePhoto {
        UIImagePickerController *imagePickerController = [[UIImagePickerController alloc]init];
        imagePickerController.delegate = self;
        imagePickerController.sourceType =  UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:imagePickerController animated:YES completion:nil];
}


-(void) takePhoto {
    
    bool boolean = [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera];
    if (boolean) {
        UIImagePickerController *imagePicker = [[UIImagePickerController alloc]init];
        imagePicker.allowsEditing = true;
        imagePicker.delegate = self;
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        [self presentViewController:imagePicker animated:YES completion:nil];
    }
    
}

#pragma mark - UIImagePickerControllerDelegate

//-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo
//{
//    self.UploadImage.image = image;
//    self.UploadImage.alpha = 1;
//    self.mChoosePhoto.alpha = 0;
//    
//    NSLog(@"%@", image);
//    NSLog(@"%@", editingInfo);
//    
//    
//    
//    [picker dismissViewControllerAnimated:YES completion:nil];
//    
//}


-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    
    UIImage *image = info[UIImagePickerControllerOriginalImage];
    
    self.UploadImage.image = image;
    self.UploadImage.alpha = 1;
    self.mChoosePhoto.alpha = 0;
    [self dismissViewControllerAnimated:YES completion:nil];

}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)mSubmitBtn:(id)sender {
    ShopItem *item = [[ShopItem alloc] init];
    item.itemImage = UIImageJPEGRepresentation(self.UploadImage.image, 1);
    item.itemTitle = _itemName;
    item.itemDescription = _itemDescription;
    item.itemPrice = _itemPrice;
    item.itemModel = _itemModel;
    NSLog(@"%@", self.itemModel);
    item.userLocationSentence = _itemStates;
    [item setUserProfileImage:UIImagePNGRepresentation([UIImage imageNamed:@"people2.png"])];
    
    [[SessionInfo getSharedInstance]addShopItem:item];
    
    
    
    [self gotoView:@"ShopItemListViewController"];
    
}
@end
