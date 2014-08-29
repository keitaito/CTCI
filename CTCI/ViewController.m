//
//  ViewController.m
//  CTCI
//
//  Created by Keita on 8/18/14.
//  Copyright (c) 2014 Keita Ito. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController
{
    NSString *myString;
    UniqueCharaceter *uniqueCharacter;
    ReverseString *reverseStringInstance;
    NSString *result;
}

#pragma mark - Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    myString = [[NSString alloc] init];
    uniqueCharacter = [[UniqueCharaceter alloc] init];
    reverseStringInstance = [[ReverseString alloc] init];
    
    // Set up UITextfieldDelegate
    self.myTextField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Touch and Input Handling

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
    myString = self.myTextField.text;
}

- (IBAction)textReturn:(id)sender {
    [self.view endEditing:YES];
    myString = self.myTextField.text;
}

// Get input in a text field at real time.
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSLog(@"%@", string);
    return YES;
}

#pragma mark - Actions

- (IBAction)uniqueCharButton:(id)sender {
    result = [uniqueCharacter UniqueCharString:myString];
    [self outputMethod];
}

- (IBAction)reverseStrButton:(id)sender {
    myString = self.myTextField.text;
    result = [reverseStringInstance reverseString:myString];
    [self outputMethod];
}


#pragma mark - Output Handling

- (void) outputMethod {
    self.myLabel.text = result;
    self.myLabel.numberOfLines = 0;
    self.myLabel.frame = CGRectMake(20, 120, 280, 120);
    [self.myLabel sizeToFit];
    self.myLabel.textAlignment = NSTextAlignmentCenter;
}


#pragma mark - Methods

@end
