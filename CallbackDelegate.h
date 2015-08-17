//
//  Callbackadd.h
//  calculator
//
//  Created by TWer  on 8/13/15.
//  Copyright (c) 2015 TWer . All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CalculatorDelegate
enum CalType{ADD=10,SUB,MULT,DIV};


-(void)BackWithParameter: (float) firstparm And:(float) secondparm type:(int) itype;

@end

@interface CallbackDelegate : NSObject  <CalculatorDelegate>


@end