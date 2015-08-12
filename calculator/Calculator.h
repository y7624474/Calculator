//
//  calculator.h
//  calculator
//
//  Created by TWer  on 8/11/15.
//  Copyright (c) 2015 TWer . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property int temp_register;
-(int)Add:(int) a second: (int) b;
-(int)Sub:(int) a second: (int) b;
-(int)Mult:(int) a second: (int) b;

-(int)reAdd:(int)a;
@end
