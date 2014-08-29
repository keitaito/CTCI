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
}

#pragma mark - Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    myString = [[NSString alloc]init];
    
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
}

#pragma mark - Actions

- (IBAction)textReturn:(id)sender {
    [self.view endEditing:YES];
}

- (IBAction)myButton:(id)sender {
    myString = self.myTextField.text;
    
    NSString *result = [NSString stringWithFormat:@"This string is unique? \n%s", ([self isUniqueChars:myString] ? "YES" : "NO")];
    self.myLabel.text = result;
}

#pragma mark - Methods

- (BOOL)isUniqueChars:(NSString *)string
{
    // If string length is more than 256, there is always characters which is not unique (more than 2) becuase of ASCII code.
    if ([string length] > 256) {return NO;}
    
    // Make ASCII character set.
    bool char_set[256];
    // Initialize.
    memset(char_set, 0, sizeof(char_set));
    
    // Check each characters of the string if it is unique or not. If it is unique, set yes in character set. Characters can change integer because of ASCII code.
    for (int i = 0; i < [string length]; i++) {
        unichar val = [string characterAtIndex:i];
        // Convert to integer from unichar
        int intVal = val;
        
        if (char_set[intVal]) {
            return NO;
        }
        char_set[intVal] = YES;
    }
    return YES;
}








//- (BOOL)isUniqueChars:(NSString *)string
//{
//    if ([string length] > 256) {
//        // is string greater than # of ASCII characters
//        return NO;
//    }
//    
//    bool char_set[256];
//    memset(char_set, 0, 256);
//    // Store an array of boolean values to indicate if the car is unique or not
//    for (int i = 0; i < [string length]; i++) {
//        int value = ([string characterAtIndex:i] - 'a');
//        if (char_set[value]) {
//            return NO; // duplicate
//        }
//        char_set[value] = YES;
//    }
//    
//    // space = n
//    // time = 0(n)
//        
//    return YES;
//}

//- (void)reverseChar:(NSString *)str
//{
//    NSMutableString *reversedString = [NSMutableString string];
//    NSInteger charIndex = [str length];
//    while (charIndex > 0) {
//        charIndex--;
//        NSRange subStrRange = NSMakeRange(charIndex, 1);
//        [reversedString appendString:[str substringWithRange:subStrRange]];
//    }
//    NSLog(@"%@", reversedString);
//}
//
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
