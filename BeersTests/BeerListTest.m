//
//  BeerListTest.m
//  Beers
//
//  Created by Antonio Chamorro on 04/06/14.
//  Copyright (c) 2014 acm. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BeerList.h"
#import "Beer.h"


@interface BeerListTest : XCTestCase

@end

@implementation BeerListTest

- (void) testCanCreateABeerList {
    BeerList *allBeer = [[BeerList alloc] init];
    
    //matriz de trazabilidad de los requisitos de la aplic
    XCTAssertNotNil(allBeer, @"");
    XCTAssertEqual(0, [allBeer count], @"");
}

- (void) testKVCCanCreateABeerList {
    BeerList *allBeer = [[BeerList alloc] init];
    
    //matriz de trazabilidad de los requisitos de la aplic
    XCTAssertNotNil(allBeer, @"");
    XCTAssertEqual(0, [[allBeer valueForKey:@"count"] integerValue], @"");
}


- (void) testCanaddABeerToTheList{
    BeerList *allBeer = [[BeerList alloc] init];
    
    //matriz de trazabilidad de los requisitos de la aplic
    XCTAssertNotNil(allBeer, @"");
    XCTAssertEqual(0, [allBeer count], @"");
    
    Beer *alcazar = [[Beer alloc] init];
    [allBeer addBeer:alcazar];
    XCTAssertEqual(1, [allBeer count], @"");
    
}

- (void) testKVCCanaddABeerToTheList{
    BeerList *allBeer = [[BeerList alloc] init];
    
    //matriz de trazabilidad de los requisitos de la aplic
    XCTAssertNotNil(allBeer, @"");
    XCTAssertEqual(0, [[allBeer valueForKey:@"count"] integerValue], @"");
    
    Beer *alcazar = [[Beer alloc] init];
    [allBeer addBeer:alcazar];
    XCTAssertEqual(1, [[allBeer valueForKey:@"count"] integerValue], @"");
    
}


- (void) testCanRemoveABeerToTheList{
    BeerList *allBeer = [[BeerList alloc] init];
    
    //matriz de trazabilidad de los requisitos de la aplic
    //XCTAssertNotNil(allBeer, @"");
    //XCTAssertEqual(0, [allBeer count], @"");
    
    Beer *alcazar = [[Beer alloc] init];
    [allBeer addBeer:alcazar];
    XCTAssertEqual(1, [allBeer count], @"");
    
    [allBeer removeBeer:alcazar];
    XCTAssertEqual(0, [allBeer count], @"");
    
    
}


- (void) testKVCCanRemoveABeerToTheList{
    BeerList *allBeer = [[BeerList alloc] init];
    
    //matriz de trazabilidad de los requisitos de la aplic
    //XCTAssertNotNil(allBeer, @"");
    //XCTAssertEqual(0, [allBeer count], @"");
    
    Beer *alcazar = [[Beer alloc] init];
    [allBeer addBeer:alcazar];
    XCTAssertEqual(1, [[allBeer valueForKey:@"count"] integerValue], @"");
    
    [allBeer removeBeer:alcazar];
    XCTAssertEqual(0, [[allBeer valueForKey:@"count"] integerValue], @"");
    
    
}



- (void) testReturnCountBeers{
     BeerList *allBeer = [[BeerList alloc] init];
    for(NSUInteger i =0; i<100; i++){
        [allBeer addBeer:[[Beer alloc] init]];
    }
    XCTAssertTrue(allBeer.count == 100, @"");
    
        
}


- (void) testKVCReturnCountBeers{
    BeerList *allBeer = [[BeerList alloc] init];
    for(NSUInteger i =0; i<100; i++){
        [allBeer addBeer:[[Beer alloc] init]];
    }
    XCTAssertTrue([[allBeer valueForKey:@"count"] integerValue] == 100, @"");
    
    
}





- (void) testReturnAllBeers{
    BeerList *allBeer = [[BeerList alloc] init];
    
    //matriz de trazabilidad de los requisitos de la aplic
    //XCTAssertNotNil(allBeer, @"");
    //XCTAssertEqual(0, [allBeer count], @"");
    
    /*Beer *alcazar = [[Beer alloc] init];
    [allBeer addBeer:alcazar];
    //XCTAssertEqual(1, [allBeer count], @"");
    
    Beer *mahou = [[Beer alloc] init];
    [allBeer addBeer:mahou];
    */

    
    for(NSUInteger i =0; i<100; i++){
        
        Beer *b = [[Beer alloc]init];
        //initWithName:[NSString stringWithFormat:@"Beer%d",i]
        [b setName:[NSString stringWithFormat:@"Beer%d", i]];
        [allBeer addBeer:b];
                   
                   
//    StringWithFormats para concatenar texto
        //[allBeer addBeer:[[Beer alloc] init]];
    }
    
    XCTAssertEqual(100, [allBeer count], @"");

    for(int i=0;i<100;i++){
        Beer *beerTotest = [[allBeer allBeers] objectAtIndex:i];
        NSString *s = [NSString stringWithFormat:@"Beer%d",i];
        XCTAssertEqualObjects(beerTotest.name, s, @"");
    }
    
    //otra forma
    NSUInteger j=0;
    //o bien con foreach
    for(Beer *beerTest in [allBeer allBeers]){
        NSString *s = [NSString stringWithFormat:@"Beer%d",j];
        XCTAssertEqualObjects(beerTest.name, s, @"");
        j++;
    }
    
    //otra forma con un bloque
    //ejecuta este bloque para cada item de la lista
    [[allBeer allBeers] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        
        Beer *beerToTest = (Beer *)obj;
        NSLog(@"%@ %d", beerToTest.name, idx);
        
        *stop=idx > 50 ? YES:NO;
    }];
    
   
}

- (void) testKVCReturnAllBeers{
    BeerList *allBeer = [[BeerList alloc] init];
    
    //en las listas count es un metodo y no una propiedad
    //por lo que no se puede usar KVC
    
    
    for(NSUInteger i =0; i<100; i++){
        
        Beer *b = [[Beer alloc]init];
        //initWithName:[NSString stringWithFormat:@"Beer%d",i]
        
        //[b setName:[NSString stringWithFormat:@"Beer%d", i]];
        [b setName:[NSString stringWithFormat:@"Beer%d", i]];
        
        [allBeer addBeer:b];
        
        
        //    StringWithFormats para concatenar texto
        //[allBeer addBeer:[[Beer alloc] init]];
    }
    
    XCTAssertEqual(100, [allBeer count], @"");
    
    for(int i=0;i<100;i++){
        Beer *beerTotest = [[allBeer allBeers] objectAtIndex:i];
        NSString *s = [NSString stringWithFormat:@"Beer%d",i];
        XCTAssertEqualObjects([beerTotest valueForKey:@"name"] , s, @"");
    }
    
    //otra forma
    NSUInteger j=0;
    //o bien con foreach
    for(Beer *beerTest in [allBeer allBeers]){
        NSString *s = [NSString stringWithFormat:@"Beer%d",j];
        XCTAssertEqualObjects([beerTest valueForKey:@"name"] , s, @"");
        j++;
    }
    
    //otra forma con un bloque
    //ejecuta este bloque para cada item de la lista
    [[allBeer allBeers] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        
        Beer *beerToTest = (Beer *)obj;
        NSLog(@"%@ %d", [beerToTest valueForKey:@"name"], idx);
        
        *stop=idx > 50 ? YES:NO;
    }];
    
    
}


-(void) printAllPropertiesNamed:(NSArray *)properties forObject:(id)o{
    for(NSString *prop in properties){
        
        
    }
    
}






@end
