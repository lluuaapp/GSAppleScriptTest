//
//  AppDelegate.m
//  GSAppleScriptTest
//
//  Created by Paul Hecker on 14.10.15.
//  Copyright © 2015 Paul Hecker. All rights reserved.
//

#import "AppDelegate.h"
#import "GSEbayListing.h"

#define LISTINGS_COUNT (100)

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;

@property NSArray* ebayListings;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSMutableArray *ebayListings = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < LISTINGS_COUNT; i++)
    {
        GSEbayListing *l = [[GSEbayListing alloc] init];
        
        l.sku = [NSString stringWithFormat:@"sku_%lu", i];
        l.title = [NSString stringWithFormat:@"title_%lu", i];
        
        [ebayListings addObject:l];
    }
    
    self.ebayListings = [ebayListings copy];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification
{
    // Insert code here to tear down your application
}

- (NSArray*) selectedEbayListings
{
    NSMutableArray  *result = [[NSMutableArray alloc] init];
    NSUInteger      count = arc4random_uniform(4) + 1;

    for (NSUInteger i = 0; i < count; i++)
    {
        NSUInteger      index = arc4random_uniform(LISTINGS_COUNT);
        GSEbayListing   *l = [self.ebayListings objectAtIndex:index];
        
        if (NO == [result containsObject:l])
        {
            [result addObject:l];
        }
    }

    return [result copy];
}

@end
