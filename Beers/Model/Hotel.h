//
//  Hotel.h
//  Beers
//
//  Created by Antonio Chamorro on 04/06/14.
//  Copyright (c) 2014 acm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "person.h"

@interface Hotel : NSObject



- (void) addPerson:(Person *)person;

- (void) allRooms:(NSArray *)allRooms;

+ (Person *) whoSleepsAtRoom:(NSString *)room;

+ (NSUInteger) numberOfOccupiedRooms;




@end
