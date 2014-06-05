//
//  BeerList.m
//  Beers
//
//  Created by Antonio Chamorro on 04/06/14.
//  Copyright (c) 2014 acm. All rights reserved.
//

#import "BeerList.h"

@interface BeerList()
//se declara aqui en le .m la propiedad para no hacerla publica en el .h
//por ejemplo, en test no podran modificarla
@property (nonatomic, strong) NSMutableArray *theList;

@end

@implementation BeerList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _theList = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) addBeer:(Beer *) beer
{
    [self.theList addObject:beer];
}

- (void) removeBeer:(Beer *) beer{
    [self.theList removeObject:beer];
}

- (NSUInteger) count{
    return [self.theList count];
}

- (NSArray *)allBeers{
    return (NSArray *)self.theList;
    
}





@end
