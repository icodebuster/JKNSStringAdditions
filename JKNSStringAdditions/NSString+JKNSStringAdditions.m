//
//  NSString+JKNSStringAdditions.m
//  JKNSStringAdditionsExample
//
//  Created by Jobin Kurian on 20/03/14.
//  Copyright (c) 2014 Jobin Kurian. All rights reserved.
//

#import "NSString+JKNSStringAdditions.h"

@implementation NSString (JKNSStringAdditions)


// Function to check if the string is blank.
- (BOOL)isBlank {
    if([[self stringWithoutBlanks] isEqualToString:@""])
        return YES;
    return NO;
}

// Function to remove the blank spaces.
- (NSString *)stringWithoutBlanks {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

// Function to check is a string contains a sub string.
- (BOOL)contains:(NSString *)string {
    NSRange range = [self rangeOfString:string];
    return (range.location != NSNotFound);
}

// Function to split a string by string.
- (NSArray *)splitBy:(NSString *)splitString
{
    return [self componentsSeparatedByString:splitString];
}

@end
