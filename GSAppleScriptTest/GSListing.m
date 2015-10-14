//
//  GSListing.m
//  GSAppleScriptTest
//
//  Created by Paul Hecker on 14.10.15.
//  Copyright © 2015 Paul Hecker. All rights reserved.
//

#import "GSListing.h"

@implementation GSListing

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _uuid = [[NSUUID UUID] UUIDString];
    }
    return self;
}

- (NSScriptObjectSpecifier *)objectSpecifier
{
    NSScriptClassDescription *appDescription = (NSScriptClassDescription *)[NSApp classDescription];
    return [[NSUniqueIDSpecifier alloc] initWithContainerClassDescription:appDescription
                                                       containerSpecifier:nil
                                                                      key:@"listing"
                                                                 uniqueID:self.uuid];
}

@end
