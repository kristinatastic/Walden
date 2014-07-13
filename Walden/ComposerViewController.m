//
//  ComposerViewController.m
//  Walden
//
//  Created by Kristina Varshavskaya on 7/1/14.
//  Copyright (c) 2014 kristinatastic. All rights reserved.
//

#import "ComposerViewController.h"

@interface ComposerViewController ()


- (void)textViewDidBeginEditing:(UITextView *)textView;
- (IBAction)onTap:(id)sender;



@end

@implementation ComposerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.textView.delegate = self;
    self.textView.alpha = 0.9;
    self.backgroundImageView.image = [UIImage imageNamed:self.backgroundName];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textViewDidBeginEditing:(UITextView *)textView {
    [textView setText:@""];
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
}




@end
