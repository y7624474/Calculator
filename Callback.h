//
//  Callbackadd.h
//  calculator
//
//  Created by TWer  on 8/13/15.
//  Copyright (c) 2015 TWer . All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CallbackAdd

-(void)callBackParameter: (float) Firstparm;
@end

@interface Callback : NSObject  <CallbackAdd>


@end