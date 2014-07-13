//
//  ComposerViewController.h
//  Walden
//
//  Created by Kristina Varshavskaya on 7/1/14.
//  Copyright (c) 2014 kristinatastic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ComposerViewController : UIViewController <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) NSString *backgroundName;

@end
