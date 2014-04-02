//
//  ViewController.m
//  JKNSStringAdditionsExample
//
//  Created by Jobin Kurian on 20/03/14.
//  Copyright (c) 2014 Jobin Kurian. All rights reserved.
//

#import "ViewController.h"
#import "NSString+JKNSStringAdditions.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSString *blankString = @"  ";
    NSString *someString = @"     Some String     ";
    NSString *lineString = @"my.name.is.jobin";
    NSString *stringToHash = @"Sample String";
    
    
    // Blank String Sample
    NSLog(@"String is blank = %@", [blankString isBlank] ? @"Yes" : @"No");
    NSLog(@"String is blank = %@", [someString isBlank] ? @"Yes" : @"No");
    
    // String Without Blanks
    NSLog(@"String without blanks = %@", [someString stringWithoutBlanks]);
    
    // String Contains Checking
    NSLog(@"String Contains = %@", [someString contains:@"Some"] ? @"Yes" : @"No");
    
    // Split String
    NSLog(@"String Contains = %@", [lineString splitBy:@"."]);
    
    // MD5 Hash
    NSLog(@"MD5 Hash = %@", [stringToHash md5]);
    
    // SHA1 Hash
    NSLog(@"SHA1 Hash = %@", [stringToHash sha1]);
    
    // SHA256 Hash
    NSLog(@"SHA256 Hash = %@", [stringToHash sha256]);
 
    // SHA512 Hash
    NSLog(@"SHA512 Hash = %@", [stringToHash sha512]);
    
    
    // Lower Case Check
    NSString *lowerCaseString = @"lowercase";
    
    NSLog(@"String is lower case = %@", [lowerCaseString isAllLowerCase] ? @"Yes" : @"No");
    NSLog(@"String is lower case = %@", [stringToHash isAllLowerCase] ? @"Yes" : @"No");
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
