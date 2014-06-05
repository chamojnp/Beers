//
//  HotelTests.m
//  Beers
//
//  Created by Antonio Chamorro on 04/06/14.
//  Copyright (c) 2014 acm. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Hotel.h"
#import "Person.h"

@interface HotelTests : XCTestCase

@end

@implementation HotelTests
/*
- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}
*/

- (void) testAddPersonToHotel {
    
    
    Hotel *fontana = [[Hotel alloc] init];
    
    Person *p =[[Person alloc] initWithName:@"nombre" andAddress:@"direccion" andAge:28];
    
    
    
    
    
    
       
}






@end
