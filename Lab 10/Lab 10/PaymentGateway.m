//
//  PaymentGateway.m
//  Lab 10
//
//  Created by cdajp on 9/14/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void) processPaymentAmount: (NSInteger) amount {
    [self.paymentDelegate processPaymentAmount:amount];
}

- (Boolean)canProcessPayment {
    return [self.paymentDelegate canProcessPayment];
}
@end
