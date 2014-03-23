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

// Function to compute md5 hash of the string.
- (NSString *)md5;

// Function to compute sha1 hash of the string.
- (NSString *)sha1;

// Function to compute sha256 hash of the string.
- (NSString *)sha256;

// Function to compute sha512 hash of the string.
- (NSString *)sha512;


@end
