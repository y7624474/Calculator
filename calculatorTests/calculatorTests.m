//
//  calculatorTests.m
//  calculatorTests
//
//  Created by TWer  on 8/11/15.
//  Copyright (c) 2015 TWer . All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Calculator+Sqrt.h"
#import "CallbackDelegate.h"

@interface calculatorTests : XCTestCase
{
    Calculator *cal;
}
@end

@implementation calculatorTests

- (void)setUp {
    [super setUp];
    cal=[Calculator getInstance];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testAdd {
    // This is an example of a functional test case.
    float result=[cal Add:1 With:2];
    XCTAssertEqual(result,3);
}

- (void)testAddWithDelegate {
    // This is an example of a functional test case.
    [cal Add:1 With:2];
    cal.delegate=[CallbackDelegate new];

}

- (void)testSubWithDelegate {
    // This is an example of a functional test case.
    [cal Sub:4 By:2];
    cal.delegate=[CallbackDelegate new];
    
}

- (void)testMultWithDelegate {
    // This is an example of a functional test case.
    [cal Mult:1 With:2];
    cal.delegate=[CallbackDelegate new];
    
}

- (void)testDivWithDelegate {
    // This is an example of a functional test case.
    [cal Div:1 By:2];
    cal.delegate=[CallbackDelegate new];
    
}

- (void)testSub {
    // This is an example of a functional test case.
    float result=[cal Sub:4 By:1] ;
    XCTAssertEqual(result, 3,@"Sub fail");
}

-(void)testreAdd {
    // This is an example of a functional test case.
    [cal Add:0 With:2];
    float result=[cal reAdd:4] ;
    XCTAssertEqual(result, 6,@"reAdd fail");
}


-(void)testreMultWithAdd {
    // This is an example of a functional test case.
    [cal Add:3 With:1];
    float result=[cal reMult:3] ;
    XCTAssertEqual(result, 12,@"reMult fail");
}

-(void)testreSqrt {
    // This is an example of a functional test case.
    [cal Add:3 With:1];
    float result=[cal reSqrt] ;
    XCTAssertEqual(result, 2,@"reMult fail");
}


-(void)testGetInstance{
    Calculator *testcal=[Calculator getInstance];
    XCTAssertEqual(cal, testcal,@"getinstance fail");
}

-(void)testSqrtBlock{
    float result=[cal Blocksqrt:^float(float f) {
        return sqrtf(f);
    } With:16];
    XCTAssertEqual(result, 4,@"block fail");
}


@end
