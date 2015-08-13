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
#import "Calculator+Sqrt.h"

int main(int argc, char * argv[]) {
  
    Calculator *cal=[Calculator getInstance];
    
    [cal Add:1 With:2];
    [cal reMult:2];
    [cal reSub:2];
    
    float result=[cal reSqrt];
   
    
    NSLog(@"the result is %.2f",result);
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
