//
//  SecondViewController.m
//  AngelHackPure
//
//  Created by Khoo Chun Qhai on 6/13/15.
//  Copyright (c) 2015 ChunQhai. All rights reserved.
//

#import "SecondViewController.h"
#import "CountryPicker.h"
#import "TakePhotoViewController.h"

@interface SecondViewController()<UITextFieldDelegate, UITextViewDelegate>


@property (weak, nonatomic) IBOutlet CountryPicker *countryPicker;
@property (weak, nonatomic) IBOutlet UITextField *itemNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *itemModelTextField;
@property (weak, nonatomic) IBOutlet UITextField *districtLabel;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UISlider *seekBar;
@property (weak, nonatomic) IBOutlet UILabel *maxValue;
- (IBAction)valueChanged:(id)sender;
- (IBAction)nextBtnPressed:(id)sender;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setUpTextFieldArray:@[self.itemNameTextField,self.itemModelTextField,self.districtLabel] withBorderWidth:1.0f borderColor:[UIColor colorWithRed:30.0f/255.0f green:172.0f/255.0f blue:134.0f/255.0f alpha:1.0f]];
    
    self.textView.layer.borderWidth = 1.0f;
    self.textView.layer.borderColor = [[UIColor colorWithRed:30.0f/255.0f green:172.0f/255.0f blue:134.0f/255.0f alpha:1.0f]CGColor];
    self.textView.text = @"Description";
    self.textView.delegate = self;
    
    self.seekBar.minimumValue = 0.0f;
    self.seekBar.maximumValue = 100.0f;
    self.seekBar.continuous = YES;
    self.seekBar.value = 20.0;
    self.seekBar.minimumTrackTintColor = [UIColor colorWithRed:30.0f/255.0f green:172.0f/255.0f blue:134.0f/255.0f alpha:1.0f];
    self.maxValue.text = @"20";
    
    
    NSLog(@"%@",self.countryPicker.selectedCountryName);
    
    self.navigationController.navigationBar.tintColor = [self colorWithHexString:@"31b496"];
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [self colorWithHexString:@"31b496"]};
    
    

    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setUpTextFieldArray:(NSArray *)textFieldArray withBorderWidth:(CGFloat)number borderColor:(UIColor *)color
{
    
    for (UITextField * textField in textFieldArray) {
        textField.layer.borderWidth = number;
        textField.layer.borderColor = [color CGColor];
        textField.delegate = self;
    }
    
}

-(void)textViewDidBeginEditing:(UITextView *)textView
{
    [self animateTextView:textView up:NO];
    textView.text = nil;
}

-(void) animateTextView :(UITextView *) textView
                    up  : (BOOL) up
{
    const int movementDistance = -170; // teak as needed
    const float movementDuration = 0.3f; //tweak as needed
    
    int movement = (up ? -movementDistance : movementDistance);
    
    [UIView beginAnimations:@"anim" context:nil];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}


-(void)textViewDidEndEditing:(UITextView *)textView
{
    
    if ([textView.text  isEqual: @""]) {
        textView.text = @"Description";
    }
    [self animateTextView:textView up:YES];
    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return true;
}


-(BOOL)textViewShouldEndEditing:(UITextView *)textView
{
    [textView resignFirstResponder];
    return YES;
}

- (BOOL) textView: (UITextView*) textView
shouldChangeTextInRange: (NSRange) range
  replacementText: (NSString*) text
{
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}








- (IBAction)valueChanged:(id)sender {
    UISlider *slider = (UISlider *)sender;
    self.maxValue.text = [NSString stringWithFormat:@"%d",(int)[slider value]];
    
}

- (IBAction)nextBtnPressed:(id)sender {
    
    [self passDataForward];
}

- (void) passDataForward {
    //TakePhotoViewController *controller = [[TakePhotoViewController alloc]init];
    
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    TakePhotoViewController *controller = (TakePhotoViewController*)[mainStoryboard instantiateViewControllerWithIdentifier:@"TakePhotoViewController"];
    controller.itemName = self.itemNameTextField.text;
    NSLog(@"itemName:%@",self.itemNameTextField.text);
    
    controller.itemDescription = self.itemModelTextField.text;
    controller.itemCountry = self.countryPicker.selectedCountryName;
    controller.itemStates = self.districtLabel.text;
    controller.itemPrice = self.maxValue.text;
    
    [self.navigationController pushViewController:controller animated:YES];

}


@end
