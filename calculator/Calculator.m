//
//  calculator.m
//  calculator
//
//  Created by TWer  on 8/11/15.
//  Copyright (c) 2015 TWer . All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

-(int)Add:(int)a second: (int)b
{
    int re=a+b;
    return re;
}

-(int)Sub:(int)a second:(int)b
{
    int re=a-b;
    return re;
}

-(int)Mult:(int)a second:(int)b
{
    int re=a*b;
    return re;
}

-(int)reAdd:(int)a
{
    int re=a+self.temp_register;
    return re;
}
@end
