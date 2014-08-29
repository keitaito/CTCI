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
    NSString *result;
}

#pragma mark - Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    myString = [[NSString alloc] init];
    uniqueCharacter = [[UniqueCharaceter alloc] init];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Touch Handling

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
    myString = self.myTextField.text;
}

- (IBAction)textReturn:(id)sender {
    [self.view endEditing:YES];
    myString = self.myTextField.text;
}

#pragma mark - Actions

- (IBAction)uniqueCharButton:(id)sender {
    result = [uniqueCharacter UniqueCharString:myString];
    [self outputMethod];
    
    //    myString = self.myTextField.text;
    
//    result = [NSString stringWithFormat:@"This string is unique? \n%s", ([uniqueCharacter isUniqueChars:myString] ? "YES" : "NO")];
//    self.myLabel.text = result;
}

- (IBAction)reverseStrButton:(id)sender {
    result = [self reverseString:myString];
    [self outputMethod];
}




- (void) outputMethod {
    self.myLabel.text = result;
    self.myLabel.numberOfLines = 0;
    self.myLabel.frame = CGRectMake(20, 120, 280, 120);
    [self.myLabel sizeToFit];
    self.myLabel.textAlignment = NSTextAlignmentCenter;
}


#pragma mark - Methods

- (NSString *)reverseString:(NSString *)string {
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger charIndex = [string length];
    while (charIndex > 0) {
        charIndex --;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[string substringWithRange:subStrRange]];
    }

//    NSLog(@"%@", reversedString);    
    return reversedString;
}


//- (BOOL)checkPermutationWithStr1:(NSString *)str1 Str2:(NSString *)str2
//{
//    
//    return YES;
//}
//
//- (NSString *)sortString:(NSString *)string
//{
//    NSMutableArray *array = [NSMutableArray array];
//    for (int i = 0; i < [string length]; i++) {
//        [array addObject:[NSString stringWithFormat:@"%c", [string characterAtIndex:i]]];
//    }
//    return string;
//}




@end
