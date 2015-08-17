//
//  calculator.h
//  calculator
//
//  Created by TWer  on 8/11/15.
//  Copyright (c) 2015 TWer . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CallbackDelegate.h"


@interface Calculator : NSObject

+(Calculator*)getInstance;

@property float temp_register;

@property id <CalculatorDelegate> delegate;

-(float)Add:(float) first With: (float) second;
-(float)Sub:(float) first By: (float) second;
-(float)Mult:(float) first With: (float) second;
-(float)Div:(float) first By: (float) second;
-(float)reAdd:(float)regist;
-(float)reSub:(float)regist;
-(float)reMult:(float)regist;
-(float)reDiv:(float)regist;

enum Body{AB=10,CD,EF,HG};
//-(void)init;
@end

