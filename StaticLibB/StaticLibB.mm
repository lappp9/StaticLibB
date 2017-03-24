//
//  StaticLibB.m
//  StaticLibB
//
//  Created by Luke Parham on 3/23/17.
//  Copyright © 2017 Fyusion, Inc. All rights reserved.
//

#import "StaticLibB.h"
#import "StaticLibA.h"

#import "SomeExtremeCode.hpp"

@implementation StaticLibB
- (void)doSomething;
{
    NSLog(@"First I print in B and then I'll call A");
    
    StaticLibA *a = [[StaticLibA alloc] init];
    [a doSomething];
    
    NSLog(@"Then i'll call some c++");
    
    doSomethingExtreme();
}
@end
