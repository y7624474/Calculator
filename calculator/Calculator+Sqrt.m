//
//  Calculator+Sqrt.m
//  calculator
//
//  Created by TWer  on 8/12/15.
//  Copyright (c) 2015 TWer . All rights reserved.
//

#import "Calculator+Sqrt.h"

@implementation Calculator (Sqrt)
//sqrt_block bsqrt=^(float f){return sqrtf(f);};
//
//-(float)Blocksqrt:(float)regist
//{
//    return bsqrt(regist);
//}

-(float)Blocksqrt:(sqrt_block) registblock
{
    registblock();
    return [self reSqrt];
}

-(float)reSqrt
{
    
    return sqrtf(self.temp_register);
}
@end
