//
//  ReverseString.m
//  CTCI
//
//  Created by Keita on 8/28/14.
//  Copyright (c) 2014 Keita Ito. All rights reserved.
//

#import "ReverseString.h"

@implementation ReverseString

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

@end
