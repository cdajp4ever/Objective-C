//
//  PaymentGateway.h
//  Lab 10
//
//  Created by cdajp on 9/14/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PaymentGateway;

@protocol PaymentDelegate <NSObject>

- (void)processPaymentAmount: (NSInteger) amount;

- (Boolean)canProcessPayment;

@end

@interface PaymentGateway : NSObject

- (void) processPaymentAmount: (NSInteger) amount;
- (Boolean)canProcessPayment;


@property (nonatomic, weak) id <PaymentDelegate> paymentDelegate;

@end
