//
//  GSApplication.m
//  GSAppleScriptTest
//
//  Created by Paul Hecker on 14.10.15.
//  Copyright © 2015 Paul Hecker. All rights reserved.
//

#import "GSApplication.h"
#import "AppDelegate.h"

@implementation GSApplication

- (AppDelegate*) appDelegate
{
    return (AppDelegate*)[[NSApplication sharedApplication] delegate];
}

- (NSArray*) ebayListings
{
    return [self.appDelegate ebayListings];
}

- (NSArray*) selectedEbayListings
{
    return [self.appDelegate selectedEbayListings];
}

@end
