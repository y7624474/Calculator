//
//  Calculator+Sqrt.m
//  calculator
//
//  Created by TWer  on 8/12/15.
//  Copyright (c) 2015 TWer . All rights reserved.
//

#import "Calculator+Sqrt.h"

@implementation Calculator (Sqrt)
-(float)Sqrt:(float) regist
{
    return sqrtf(regist);
}

-(float)reSqrt
{
    
    return sqrtf(self.temp_register);
}
@end
