//
//  ApplePay.m
//  Lab 10
//
//  Created by cdajp on 9/14/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import "ApplePay.h"

@implementation ApplePay

- (Boolean)canProcessPayment {
    NSInteger answer = arc4random_uniform(2);
    Boolean ans = YES;
    if(answer == 1){
        ans = YES;
    } else {
        ans = NO;
    }
    return ans;
}

- (void)processPaymentAmount: (NSInteger) amount{
    if(self.canProcessPayment) {
        NSString *paid = [NSString stringWithFormat:@"ApplePay processed amount $%ld", amount];
        NSLog(@"%@", paid);
    } else {
        NSString *paid = [NSString stringWithFormat:@"ApplePay is unable to process your payment for $%ld at the moment, sorry for any inconvenience", amount];
        NSLog(@"%@", paid);
    }
    
}

@end
