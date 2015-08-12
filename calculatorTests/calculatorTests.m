//
//  calculatorTests.m
//  calculatorTests
//
//  Created by TWer  on 8/11/15.
//  Copyright (c) 2015 TWer . All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Calculator.h"
@interface calculatorTests : XCTestCase
{
    Calculator *cal;
}
@end

@implementation calculatorTests

- (void)setUp {
    [super setUp];
    cal=[Calculator new];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testAdd {
    // This is an example of a functional test case.
    int result=[cal Add:1 second:2];
    XCTAssertEqual(result,3);
}

- (void)testSub {
    // This is an example of a functional test case.
    int result=[cal Sub:4 second:1] ;
    XCTAssertEqual(result, 3,@"3");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
