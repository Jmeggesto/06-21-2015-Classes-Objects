//
//  main.m
//  Bank Account
//
//  Created by Jackie Meggesto on 6/21/15.
//  Copyright (c) 2015 Jackie Meggesto. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface bankAccount : NSObject
-(void)setBalance:(int)n;
-(void)printBalance;
-(void)decreaseBalance:(int)n;
-(void)increaseBalance:(int)n;


@end

@implementation bankAccount {
    int balance;
}
-(void)setBalance:(int)n {
    balance = n;
}
-(void)printBalance {
    NSLog(@"%d", balance);
}
-(void)decreaseBalance:(int)n {
    balance -= n;
}
-(void)increaseBalance:(int)n {
    balance += n;
}
@end



// Patron must have: 1. A Name 2. An account 3. and A pocket (remaining balance)

@interface Patron : NSObject
-(void)setPocket:(int)n;
-(void)setName:(NSString*)n;
-(void)setBankAccount:(bankAccount*)n;
-(void)depositMoney:(int)n;
-(void)withdrawMoney:(int)n;
-(void)printName;
-(void)printPocket;
@end


@implementation Patron {
    int patronPocket;
    bankAccount *patronAccount;
    NSString *patronName;
}
-(void)setPocket:(int)n {
    patronPocket = n;
}
-(void)setBankAccount:(bankAccount *)n {
    patronAccount = n;
}
-(void)printPocket {
    NSLog(@"%d", patronPocket);
}

-(void)setName:(NSString*)n {
    patronName = n;
}
-(void)printName {
    NSLog(@"%@", patronName);
}

-(void)depositMoney:(int)n {
    patronPocket -= n;
    [patronAccount increaseBalance:n];
    
}
    

@end





int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        bankAccount *account = [[bankAccount alloc]init];
        [account setBalance:100];
        [account printBalance];
        Patron *james = [[Patron alloc]init];
        [james setName:@"James"];
        [james printName];
        [james setBankAccount:account];
        [james setPocket:200];
        [james depositMoney:100];
        [james printPocket];
        [account printBalance];
        
    }
    return 0;
}
