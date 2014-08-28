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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self reverseChar:@"Keita"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)isUniqueChars:(NSString *)string
{
    if ([string length] > 256) {return NO;}
    
    bool char_set[256];
    
    for (int i = 0; i < [string length]; i++) {
        unichar val = [string characterAtIndex:i];
        int intVal = val;
        
        if (char_set[intVal]) {
            return NO;
        }
        char_set[intVal] = YES;
    }
    
    return NO;
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

- (void)reverseChar:(NSString *)str
{
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger charIndex = [str length];
    while (charIndex > 0) {
        charIndex--;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[str substringWithRange:subStrRange]];
    }
    NSLog(@"%@", reversedString);
}

- (BOOL)checkPermutationWithStr1:(NSString *)str1 Str2:(NSString *)str2
{
    
    return YES;
}

- (NSString *)sortString:(NSString *)string
{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < [string length]; i++) {
        [array addObject:[NSString stringWithFormat:@"%c", [string characterAtIndex:i]]];
    }
    return string;
}



@end
