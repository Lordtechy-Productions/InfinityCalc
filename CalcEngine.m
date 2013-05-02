//
//  CalcEngine.m
//  InfinityCalc
//
//  Created by Lordtechy on 11/30/11.
//  Copyright (c) 2011 Lordtechy. All rights reserved.
//

#import "CalcEngine.h"
#define Radians M_PI/180
#import "ViewController.h"

@implementation CalcEngine

@synthesize number;

-(double)showMemory{
    
    return storedNumber;
    
}



-(double)performOp:(NSString *)operation{ // performs operation given only NSString operation
    
    NSLog(@"Operation: %@", operation);
    NSLog(@"Waiting Operation: %@", waitingOperation);
    
   
    
    
    
    if (number == 0) {
        
        number = [theAnswer doubleValue];
        ViewController *viewC = [[ViewController alloc]init];
        [viewC opView:operation :@"Ans"];
    }

    if ([operation isEqual:@"sin"]){
       
        if (ggdegrees) {
            number=sin(number);
        }else {
            number = number * Radians;
            number =  sin(number); 
        }
        
        // to make another if statement in the same statment, for example for a +/-, use else if
    }
    else if ([operation isEqual:@"√"]) { // if the name of the button is sqrt, then take the sqrt of the operand and return operand
        
        if (number < 0) {
            
            number = NAN;
        }else{ // cannot take sqrt of negative #
            number = sqrt(number);
        }
        
        NSLog(@"Sqrt Taken");
        
    }else if ([operation isEqual:@"±"]){
        if (number == 0) {
            
        }else{
        number =  - number;
        }
        // to make another if statement in the same statment, for example for a +/-, use else if
        
    }else if ([operation isEqual:@"%"]){
        
        number =  number/100;
        
        // to make another if statement in the same statment, for example for a +/-, use else if
        
    }else if ([operation isEqual:@"cos"]){
        
            if (ggdegrees) {
                number=cos(number);
            }else {
                number = number * Radians;
                number =  cos(number); 
      
        }

        // to make another if statement in the same statment, for example for a +/-, use else if
        
    }else if ([operation isEqual:@"tan"]){
       
            if (ggdegrees) {
                number=tan(number);
            }else {
                number = number * Radians;
                number =  tan(number); 
            
        }

        // to make another if statement in the same statment, for example for a +/-, use else if
        
    }else if ([operation isEqual:@"1/x"]){
        if (number == 0) {
            number = NAN;
        }else{
                    number = 1/number;
            
        }
    }else if ([operation isEqual:@"MR"]){ // recalls memory
        number = storedNumber;
        
        
    }else if ([operation isEqual:@"MC"]){
        
        storedNumber = 0;
        
        
    }else if ([operation isEqual:@"M+"]){ //adds the current operand to what has already been stored and stores it
        storedNumber = number + storedNumber;
        
        
    }else if ([operation isEqual:@"M-"]){
        storedNumber = storedNumber - number; // subtracts the current operand from what's already been stored
        
        
    }else if ([operation isEqual:@"C"]){ // clears entire memory except for storedOperand
        number = 0;
        waitingNumber = 0;
        waitingOperation = @"";
        tempNumber = 0;
        functionMoreThanOnce = NO;
        //operation = @"";
        
        
        
    }else if ([operation isEqual:@"π"]){
        number = M_PI;
        
    }else if ([operation isEqual:@"x\u00B2"]){
        number = number * number;            
    }else if ([operation isEqual:@"x\u00B3"]){
        number = number * number * number;
       
        
        
        
        
    }else if ([operation isEqual:@"sin\u207B\u00B9"]){
        
        if (ggdegrees) {
            number=asin(number);
        }else {
            number = (180/M_PI)*asin(number);
        
        }
        
    }else if ([operation isEqual:@"cos\u207B\u00B9"]){
       
            if (ggdegrees) {
                number=acos(number);
            }else {
                number = (180/M_PI)*acos(number);
            
        }
    }else if ([operation isEqual:@"tan\u207B\u00B9"]){
        
            if (ggdegrees) {
                number=atan(number);
            }else {
                number = (180/M_PI)*atan(number);
            }
        
    }else if ([operation isEqual:@"log"]){
                number = log10(number);
        
    }else if ([operation isEqual:@"ln"]){
        
            number = log(number);
        
        
    }else if ([operation isEqual:@"\u221B"]){
       
            number = cbrt(number);
        
        
    }else if ([operation isEqual:@"10\u207F"]){
        
            number = pow(10, number);
        
        
    }else{
  
        /*if ([@"+" isEqual:waitingOperation]){ // adds
            number = waitingNumber + number;
        }else if ([@"-" isEqual:waitingOperation]){ //subtracts
            number = waitingNumber - number;
            NSLog(@"Passed opview -");
        }else if ([@"x" isEqual:waitingOperation]){ // multiplys
            number = waitingNumber * number;
        }else if ([@"x\u207F" isEqual:waitingOperation]){ // takes the square
            number = pow(waitingNumber, number);
        }else if ([@"÷" isEqual:waitingOperation]){ // divides, makes no crashes so can't divide by 0
            if (number) {
                
                number = waitingNumber / number;
            }else{
                number = NAN;
                
            }
            
        }*/
        
        //waitingNumber = number;
        //waitingOperation = operation;
        
        
    }
    
    
    
    if ([@"+" isEqual:waitingOperation]){ // adds
        number = waitingNumber + number;        
        NSLog(@"Addition Done");
        functionMoreThanOnce = NO;
    }else if ([@"-" isEqual:waitingOperation]){ //subtracts
        number = waitingNumber - number;
        NSLog(@"Passed opview -");
        functionMoreThanOnce = NO;

    }else if ([@"x" isEqual:waitingOperation]){ // multiplys
        number = waitingNumber * number;
        functionMoreThanOnce = NO;

    }else if ([@"x\u207F" isEqual:waitingOperation]){ // takes the square
        number = pow(waitingNumber, number);
        functionMoreThanOnce = NO;

    }else if ([@"÷" isEqual:waitingOperation]){ // divides, makes no crashes so can't divide by 0
        functionMoreThanOnce = NO;

        if (number) {
            
            number = waitingNumber / number;
        }else{
            number = NAN;
            
        }
        
    }
    
    waitingNumber = number;
    waitingOperation = operation;
    tempNumber = number;
           
    return number;
    
}


@end


