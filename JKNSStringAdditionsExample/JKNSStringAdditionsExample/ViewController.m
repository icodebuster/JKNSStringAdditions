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
    
    // Blank String Sample
    NSLog(@"String is blank = %@", [blankString isBlank] ? @"Yes" : @"No");
    NSLog(@"String is blank = %@", [someString isBlank] ? @"Yes" : @"No");
    
    // String Without Blanks
    NSLog(@"String without blanks = %@", [someString stringWithoutBlanks]);
    
    // String Contains Checking
    NSLog(@"String Contains = %@", [someString contains:@"Some"] ? @"Yes" : @"No");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
