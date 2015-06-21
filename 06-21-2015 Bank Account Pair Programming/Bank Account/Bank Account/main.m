//
//  main.m
//  Bank Account
//
//  Created by Jackie Meggesto on 6/21/15.
//  Copyright (c) 2015 Jackie Meggesto. All rights reserved.
//

#import <Foundation/Foundation.h>

// Bank Account has a balance

@interface bankAccount : NSObject

-(void) 

@end

@implementation bankAccount {
    
    int balance;
}


@end



// Patron must have: 1. A Name 2. An account 3. and A pocket (remaining balance)

@interface patron : NSObject
-(void) displayRemainingBalance;
-(void)deposit:(float)n;
-(void)withdraw:(float)n;




@end


@implementation patron {
    
   bankAccount *bankAccount
}

@end





int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
        
        
        bankAccount *myAccount = [[bankAccount alloc]init];
        [
        
        
    }
    return 0;
}
