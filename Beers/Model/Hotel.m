//
//  Hotel.m
//  Beers
//
//  Created by Antonio Chamorro on 04/06/14.
//  Copyright (c) 2014 acm. All rights reserved.
//

#import "Hotel.h"

@interface Hotel()

    //lista con las habitaciones
    @property (nonatomic, strong) NSMutableDictionary *rooms;
@end


@implementation Hotel


- (NSMutableDictionary *) rooms {
    if(_rooms == nil){
       _rooms = [[NSMutableDictionary alloc] init];
    }
    return _rooms;
}


- (void) addPerson:(Person *)p toRoom:(NSString *)room {
    [self.rooms setObject:p forKey:room];
    
}

- (void) allRooms:(NSArray *)allRooms{
    return [self.rooms allKeys];
    
}

+ (Person *) whoSleepsAtRoom:(NSString *)room{
    
    
}

+ (NSUInteger) numberOfOccupiedRooms{
    
    
}





@end
