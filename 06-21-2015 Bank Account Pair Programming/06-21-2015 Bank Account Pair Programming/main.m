//
//  main.m
//  06-21-2015 Bank Account Pair Programming
//
//  Created by Jackie Meggesto on 6/21/15.
//  Copyright (c) 2015 Jackie Meggesto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

-(void)setFirstNumber:(float)a;
-(void)setSecondNumber:(float)b;
-(void)displayAdditionValue;
-(void)displaySubtractionValue;
-(void)displayMultiplicationValue;
-(void)displayDivisionValue;



@end

@implementation Calculator {
    float firstNumber;
    float secondNumber;
}
-(void)setFirstNumber:(float)a {
    firstNumber = a;
}
-(void)setSecondNumber:(float)b {
    secondNumber = b;
}
-(void)displayAdditionValue {
    NSString *additionValue = [NSString stringWithFormat:@"%f %f : %f", firstNumber, secondNumber, firstNumber + secondNumber];
    NSLog(@"%@", additionValue );
}

-(void)displaySubtractionValue {
    NSString *subtractionValue = [NSString stringWithFormat:@"%f %f : %f", firstNumber, secondNumber, firstNumber - secondNumber];
    NSLog(@"%@", subtractionValue );
}

-(void)displayMultiplicationValue {
    NSString *multiplicationValue = [NSString stringWithFormat:@"%f %f : %f", firstNumber, secondNumber, firstNumber * secondNumber];
    NSLog(@"%@", multiplicationValue );
}

-(void)displayDivisionValue {
    NSString *divisionValue = [NSString stringWithFormat:@"%f %f : %f", firstNumber, secondNumber, firstNumber / secondNumber];
    NSLog(@"%@", divisionValue );
}




@end





// Calculator needs to be able to perform mathematical operations. The most basic features we would need are addition and subtraction. There also needs to be a way to output what we have calculated. The 'accumulator' is essentially acting as a sum of what has already been calculated.

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Calculator *computer = [[Calculator alloc] init];
        computer.firstNumber = 9;
        computer.secondNumber = 12;
        
        [computer displayDivisionValue];
        
        
    }
    return 0;
}
