//
//  NSString+JKNSStringAdditions.h
//  JKNSStringAdditionsExample
//
//  Created by Jobin Kurian on 20/03/14.
//  Copyright (c) 2014 Jobin Kurian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (JKNSStringAdditions)


// Function to check if the string is blank.
- (BOOL)isBlank;

// Function to remove the blank spaces.
- (NSString *)stringWithoutBlanks;

// Function to check is a string contains a sub string.
- (BOOL)contains:(NSString *)string;

// Function to split a string by string.
- (NSArray *)splitBy:(NSString *)splitString;


@end
