//
//  Beer.h
//  Beers
//
//  Created by Antonio Chamorro on 02/06/14.
//  Copyright (c) 2014 acm. All rights reserved.
//

#import <Foundation/Foundation.h>

//no usar variables de instancia

@interface Beer : NSObject{
    //iVars
    
    NSString *name;
    NSString *color;
    NSUInteger grade;

    
}

// el -   indica metodo de instancia
// () es tipo devuelto que es vacio en este caso
- (void) printBeerInfo;
//con : se pasan los parametros
- (void) printBeerInfoWithHeader:(NSString *)header;

- (void) printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *)footer;

-(void) printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *)footer andNumberOfEmojis:(NSUInteger)numberOfEmojis;

    





@end
