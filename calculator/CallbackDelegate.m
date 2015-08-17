//
//  CallbackAdd.m
//  calculator
//
//  Created by TWer  on 8/13/15.
//  Copyright (c) 2015 TWer . All rights reserved.
//

#import "CallbackDelegate.h"

@implementation CallbackDelegate

-(void)BackWithParameter: (float) firstparm And:(float) secondparm type:(int) itype
{
    switch (itype) {
        case ADD:
            NSLog(@"add delegate %.2f,%.2f",firstparm,secondparm);
            break;
        case SUB:
            NSLog(@"sub delegate %.2f,%.2f",firstparm,secondparm);
            break;
        case MULT:
            NSLog(@"mult delegate %.2f,%.2f",firstparm,secondparm);
            break;
        case DIV:
            NSLog(@"div delegate %.2f,%.2f",firstparm,secondparm);
            break;
        default:
            break;
    }
    
}



@end