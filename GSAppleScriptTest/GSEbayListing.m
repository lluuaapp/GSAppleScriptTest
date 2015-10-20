//
//  GSEbayListing.m
//  GSAppleScriptTest
//
//  Created by Paul Hecker on 14.10.15.
//  Copyright © 2015 Paul Hecker. All rights reserved.
//

#import "GSEbayListing.h"


@implementation GSEbayListing

- (NSScriptObjectSpecifier *)objectSpecifier
{
    NSScriptClassDescription *appDescription = (NSScriptClassDescription *)[NSApp classDescription];
    return [[NSUniqueIDSpecifier alloc] initWithContainerClassDescription:appDescription
                                                       containerSpecifier:nil
                                                                      key:@"ebayListings"
                                                                 uniqueID:self.uuid];
}

@end
