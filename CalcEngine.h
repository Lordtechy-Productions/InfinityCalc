//
//  CalcEngine.h
//  InfinityCalc
//
//  Created by Lordtechy on 11/30/11.
//  Copyright (c) 2011 Lordtechy. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ViewController;


@interface CalcEngine : NSObject{
    
    double number;
    NSString *waitingOperation;
    double waitingNumber;
    double storedNumber;
    double tempNumber;
    
}

@property double number;

-(double)performOp:(NSString *)operation;
-(double)showMemory;


@end

