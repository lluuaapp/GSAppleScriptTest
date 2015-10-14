//
//  AppDelegate.h
//  GSAppleScriptTest
//
//  Created by Paul Hecker on 14.10.15.
//  Copyright © 2015 Paul Hecker. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (readonly) NSArray* ebayListings;

- (NSArray*) selectedEbayListings;

@end

