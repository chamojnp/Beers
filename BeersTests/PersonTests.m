//
//  PersonTests.m
//  Beers
//
//  Created by Antonio Chamorro on 04/06/14.
//  Copyright (c) 2014 acm. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "person.h"

@interface PersonTests : XCTestCase

@end

@implementation PersonTests
#define TEST_ADDRESS @"DIR"
#define TEST_NAME @"John Doe"
#define TEST_AGE 5

//metodo de instancia tipo void, y siempre empiezan por "test"
- (void) testCanCreateAPerson{
    Person *p =[[Person alloc] init];
    //no puede ser nil
    
    XCTAssertNotNil(p,@"ERROR es nil despues de instanciar");
    
    //compara valores de objetos
    XCTAssertEqualObjects(TEST_NAME, p.name, @"Expected %@, found %@ ", TEST_NAME, p.name);
    
    XCTAssertEqual(TEST_AGE, p.age,  @"Expected %d, found %d", TEST_AGE, p.age);
    
    //XCTAssertEqual(1, p.age,  @"Error");
    
    
    
}


//el nombre del test ya debe indicar lo que hace
//no se debe comentar el test

//TODOS LOS TEST DEBEN SER INDEPENDIENTES PORQUE NO SABES EL ORDEN DE EJECUCION
//NUNCA LLAMAR A OTROS TEST DESDE UN METODO DE TEST

- (void) testCanCreateAPersonWithName{
    Person *p =[[Person alloc] initWithName:TEST_NAME];
    
    //compara valores de objetos
    XCTAssertEqualObjects(TEST_NAME, p.name, @"Expected %@, found %@ ", TEST_NAME, p.name);
    
    XCTAssertEqual(TEST_AGE, p.age,  @"Expected %d, found %d", TEST_AGE, p.age);
    
    
}


- (void) testCanCreateAPersonWithNameAndAddress{
    
    Person *p =[[Person alloc] initWithName:TEST_NAME andAddress:TEST_ADDRESS];
    
    //compara valores de objetos
    XCTAssertEqualObjects(TEST_NAME, p.name, @"Expected %@, found %@ ", TEST_NAME, p.name);
    XCTAssertEqualObjects(TEST_ADDRESS, p.address, @"Expected %@, found %@ ", TEST_ADDRESS, p.address);
    XCTAssertEqual(TEST_AGE, p.age,  @"Expected %d, found %d", TEST_AGE, p.age);
    
    
}

- (void) testCanCreateAPersonWithNameAndAddressAndAge{
    Person *p =[[Person alloc] initWithName:TEST_NAME andAddress:TEST_ADDRESS andAge:TEST_AGE];
    
    //compara valores de objetos
    XCTAssertEqualObjects(TEST_NAME, p.name, @"Expected %@, found %@ ", TEST_NAME, p.name);
    XCTAssertEqualObjects(TEST_ADDRESS, p.address, @"Expected %@, found %@ ", TEST_ADDRESS, p.address);
    XCTAssertEqual(TEST_AGE, p.age,  @"Expected %d, found %d", TEST_AGE, p.age);
    
    
    
}


-(void) testCanCreateAPersonUsingClassMethodWithName{
    
    Person *p =[[Person alloc] initWithName:@"pepe"];
    
    //compara valores de objetos
    XCTAssertEqualObjects(@"pepe", p.name, @"Expected %@, found %@ ", @"pepe", p.name);
    
    XCTAssertEqual(TEST_AGE, p.age,  @"Expected %d, found %d", TEST_AGE, p.age);
    
}




















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
*/

/* por defecto para que falle
- (void)testExample
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}
*/




@end
