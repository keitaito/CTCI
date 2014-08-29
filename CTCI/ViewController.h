//
//  ViewController.h
//  CTCI
//
//  Created by Keita on 8/18/14.
//  Copyright (c) 2014 Keita Ito. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UniqueCharaceter.h"
#import "ReverseString.h"

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

- (IBAction)textReturn:(id)sender;

- (IBAction)uniqueCharButton:(id)sender;
- (IBAction)reverseStrButton:(id)sender;
@end
