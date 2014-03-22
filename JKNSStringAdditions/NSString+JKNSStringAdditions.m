//
//  NSString+JKNSStringAdditions.m
//  JKNSStringAdditionsExample
//
//  Created by Jobin Kurian on 20/03/14.
//  Copyright (c) 2014 Jobin Kurian. All rights reserved.
//

#import "NSString+JKNSStringAdditions.h"
#import <CommonCrypto/CommonDigest.h>

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

// Function to compute md5 hash of the string.
- (NSString *)md5
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    uint8_t digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(data.bytes, data.length, digest);
    NSMutableString *md5String = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [md5String appendFormat:@"%02x", digest[i]];
    }
    return md5String;
}

// Function to compute sha1 hash of the string.
- (NSString *)sha1
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    uint8_t digest[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(data.bytes, data.length, digest);
    NSMutableString *sha1String = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    
    for (int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
        [sha1String appendFormat:@"%02x", digest[i]];
    }
    
    return sha1String;
}


@end
