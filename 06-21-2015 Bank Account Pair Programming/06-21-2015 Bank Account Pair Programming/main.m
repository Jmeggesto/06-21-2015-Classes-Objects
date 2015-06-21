//
//  main.m
//  06-21-2015 Bank Account Pair Programming
//
//  Created by Jackie Meggesto on 6/21/15.
//  Copyright (c) 2015 Jackie Meggesto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

-(void)setCurrentValue:(float)n;
-(void)addition:(float)n;
-(void)subtraction:(float)n;
-(void)multiplication:(float)n;
-(void)division:(float)n;
-(void)changeSign;
-(void)displayCurrentValue;
//-(void)setSecondNumber;
//-(void)displayAdditionValue;
//-(void)displaySubtractionValue;
//-(void)displayMultiplicationValue;
//-(void)displayDivisionValue;



@end

@implementation Calculator {
    float currentValue;
}
-(void)displayCurrentValue {
    NSLog(@"%f", currentValue);
}

-(void)setCurrentValue:(float)n {
    currentValue = n;
}
-(void)addition:(float)n {
    currentValue += n;
}
-(void)subtraction:(float)n {
    currentValue -= n;
}
-(void)multiplication:(float)n {
    currentValue = currentValue * n;
}
-(void)division:(float)n {
    currentValue = currentValue / n;
}
-(void)changeSign {
    currentValue = currentValue * -1;
}



@end





// Calculator needs to be able to perform mathematical operations. The most basic features we would need are addition and subtraction. There also needs to be a way to output what we have calculated. The 'accumulator' is essentially acting as a sum of what has already been calculated.

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Calculator *myCalculator = [[Calculator alloc] init];
        [myCalculator setCurrentValue:0];
        [myCalculator addition:1];
        [myCalculator addition:2];
        [myCalculator addition:3];
        [myCalculator changeSign];
        [myCalculator displayCurrentValue];
        
        
        
        
        
    }
    return 0;
}
