//
//  Calculator+Sqrt.h
//  calculator
//
//  Created by TWer  on 8/12/15.
//  Copyright (c) 2015 TWer . All rights reserved.
//

#import "calculator.h"

@interface Calculator (Sqrt)
typedef void (^sqrt_block)();

//@property sqrt_block ss;
-(float)Blocksqrt:(sqrt_block) registblock ;

//-(float)Blocksqrt:(float) regist;
-(float)reSqrt;
@end
