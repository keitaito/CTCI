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
    if ([string length] > 256) {
        // is string greater than # of ASCII characters
        return NO;
    }
    
    bool char_set[256];
    memset(char_set, 0, 256);
    // Store an array of boolean values to indicate if the car is unique or not
    for (int i = 0; i < [string length]; i++) {
        int value = ([string characterAtIndex:i] - 'a');
        if (char_set[value]) {
            return NO; // duplicate
        }
        char_set[value] = YES;
    }
    
    // space = n
    // time = 0(n)
        
    return YES;
}

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

@end
