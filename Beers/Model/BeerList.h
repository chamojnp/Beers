//
//  BeerList.h
//  Beers
//
//  Created by Antonio Chamorro on 04/06/14.
//  Copyright (c) 2014 acm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Beer.h"

@interface BeerList : NSObject

@property (nonatomic) NSUInteger count;

- (void) addBeer:(Beer *) beer;

- (void) removeBeer:(Beer *) beer;

- (NSUInteger) count;

- (NSArray *)allBeers;


@end
