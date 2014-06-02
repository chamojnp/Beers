//
//  Beer.m
//  Beers
//
//  Created by Antonio Chamorro on 02/06/14.
//  Copyright (c) 2014 acm. All rights reserved.
//

#import "Beer.h"

@implementation Beer


//no usar variables de instancias



- (void) printBeerInfo{
    NSLog(@"Name: %@", name);
    NSLog(@"Color: %@", color);
    NSLog(@"Alcohol: %d", grade);
    
    
}

//con : se pasan los parametros

- (void) printBeerInfoWithHeader:(NSString *)header{
    
    NSLog(@"%d",header);
    
    
    
    [self printBeerInfo];

}

- (void) printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *)footer{}

-(void) printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *)footer andNumberOfEmojis:(NSUInteger)numberOfEmojis{}

@end
