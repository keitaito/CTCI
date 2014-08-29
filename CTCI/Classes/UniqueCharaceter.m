//
//  UniqueCharaceter.m
//  CTCI
//
//  Created by Keita on 8/28/14.
//  Copyright (c) 2014 Keita Ito. All rights reserved.
//

#import "UniqueCharaceter.h"

@implementation UniqueCharaceter

- (NSString *)UniqueCharString:(NSString *)string {
   return [NSString stringWithFormat:@"This string is unique? \n%s", ([self isUniqueChars:string] ? "YES" : "NO")];
}

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

@end
