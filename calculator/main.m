//
//  main.m
//  calculator
//
//  Created by TWer  on 8/11/15.
//  Copyright (c) 2015 TWer . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "calculator.h"
int main(int argc, char * argv[]) {
    Calculator *cal=[Calculator new];

    cal.temp_register=[cal Add:1 second:2];
    cal.temp_register=[cal Mult:2 second:cal.temp_register];
    cal.temp_register=[cal Sub:cal.temp_register second:2];
    
    int result=[cal reAdd:2];
    
    NSLog(@"the result is %d",result);
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
