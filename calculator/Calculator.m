//
//  calculator.m
//  calculator
//
//  Created by TWer  on 8/11/15.
//  Copyright (c) 2015 TWer . All rights reserved.
//

#import "Calculator.h"

static Calculator *cal=nil;

@implementation Calculator 
//callback.delegate = self;
+ (Calculator *)getInstance {
    
    @synchronized(self) {
        if (cal == nil) {
            cal = [[Calculator alloc] init];
        }
    }

    return cal;
}


-(float)Add:(float) first With: (float) second
{
    self.temp_register=first+second;
    [self.delegate BackWithParameter:first And:second type:ADD];
 
//    [self callBackParameter:first];
    return self.temp_register;
}

-(float)Sub:(float)first By:(float)second
{
    self.temp_register=first-second;
    [self.delegate BackWithParameter:first And:second type:SUB];
    return self.temp_register;
}

-(float)Mult:(float) first With: (float) second
{
    self.temp_register=first*second;
    [self.delegate BackWithParameter:first And:second type:MULT];
    return self.temp_register;
}

-(float)Div:(float)first By:(float)second
{
    self.temp_register=first/second;
    [self.delegate BackWithParameter:first And:second type:DIV];
    return self.temp_register;
}

-(float)reAdd:(float)regist
{
   self.temp_register=regist+self.temp_register;
    
    return self.temp_register;
}

-(float)reSub:(float)regist
{
    self.temp_register=self.temp_register-regist;
    
    return self.temp_register;
}

-(float)reDiv:(float)regist
{
    self.temp_register=self.temp_register/regist;
   
    return self.temp_register;
}

-(float)reMult:(float)regist
{
    self.temp_register=self.temp_register*regist;

    return self.temp_register;
}




    

@end
