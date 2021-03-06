//
//  NSString+JKNSStringAdditions.m
//  JKNSStringAdditionsExample
//
//  Created by Jobin Kurian on 20/03/14.
//  Copyright (c) 2014 Jobin Kurian. All rights reserved.
//

#import "NSString+JKNSStringAdditions.h"
#import <CommonCrypto/CommonDigest.h>

enum CASE_TYPE {
    LOWER_CASE,
    UPPER_CASE
} CaseType;


@implementation NSString (JKNSStringAdditions)


// Function to check if the string is blank.
- (BOOL)isBlank
{
    if([[self stringWithoutBlanks] isEqualToString:@""])
        return YES;
    return NO;
}

// Function to remove the blank spaces.
- (NSString *)stringWithoutBlanks
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

// Function to check is a string contains a sub string.
- (BOOL)contains:(NSString *)string
{
    NSRange range = [self rangeOfString:string];
    return (range.location != NSNotFound);
}

// Function to split a string by string.
- (NSArray *)splitBy:(NSString *)splitString
{
    return [self componentsSeparatedByString:splitString];
}

// Function to check if the string is all lower case.
- (BOOL)isAllLowerCase
{
    return [self isBlank] ? NO : ([self rangeOfCharacterFromSet:[self caseCharacterSet:LOWER_CASE]].location == NSNotFound);
}

- (NSCharacterSet *)caseCharacterSet:(enum CASE_TYPE)caseType
{
    switch (CaseType) {
        case LOWER_CASE: {
            return [NSCharacterSet.lowercaseLetterCharacterSet invertedSet];
            break;
        }
        case UPPER_CASE : {
            return [NSCharacterSet.uppercaseLetterCharacterSet invertedSet];
            break;
        }
    }
}

// To validate email address.
- (BOOL)isEmailValid {
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:self];
}


#pragma mark - String Hashes Methods

// Function to compute md5 hash of the string.
- (NSString *)md5
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    uint8_t digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(data.bytes, (unsigned int)data.length, digest);
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
    CC_SHA1(data.bytes, (unsigned int)data.length, digest);
    NSMutableString *sha1String = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    
    for (int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
        [sha1String appendFormat:@"%02x", digest[i]];
    }
    
    return sha1String;
}

// Function to compute sha256 hash of the string.
- (NSString *)sha256
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    uint8_t digest[CC_SHA256_DIGEST_LENGTH];
    CC_SHA256(data.bytes, (unsigned int)data.length, digest);
    NSMutableString *sha256String = [NSMutableString stringWithCapacity:CC_SHA256_DIGEST_LENGTH * 2];
    
    for (int i = 0; i < CC_SHA256_DIGEST_LENGTH; i++) {
        [sha256String appendFormat:@"%02x", digest[i]];
    }
    
    return sha256String;
}

// Function to compute sha512 hash of the string.
- (NSString *)sha512
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    uint8_t digest[CC_SHA512_DIGEST_LENGTH];
    CC_SHA512(data.bytes, (unsigned int)data.length, digest);
    NSMutableString *sha512String = [NSMutableString stringWithCapacity:CC_SHA512_DIGEST_LENGTH * 2];
    
    for (int i = 0; i < CC_SHA512_DIGEST_LENGTH; i++) {
        [sha512String appendFormat:@"%02x", digest[i]];
    }
    
    return sha512String;
}


@end
