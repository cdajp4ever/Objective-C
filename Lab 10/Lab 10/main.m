//
//  main.m
//  Lab 10
//
//  Created by cdajp on 9/14/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "Paypal.h"
#import "Stripe.h"
#import "Amazon.h"
#import "ApplePay.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSInteger tprice = arc4random_uniform(900) + 100;
        NSString *initialMsg = [NSString stringWithFormat:@"Thank you for your shopping at Acme.com\n Your total today is $%lu \nPlease select your payment method: \n1: Paypal \n2: Stripe \n3: Amazon \n4: ApplePay", tprice];
        NSString *input = [InputHandler getUserInputWithLength:10 widthPrompt:initialMsg];
        NSInteger inputv = [input integerValue];
        PaymentGateway *letspay = [[PaymentGateway alloc] init];
        Paypal *paypalPay = [Paypal new];
        Stripe *stripePay = [Stripe new];
        Amazon *amazonPay = [Amazon new];
        ApplePay *applePay = [ApplePay new];
        switch (inputv) {
            case 1:
                letspay.paymentDelegate = paypalPay;
                [letspay processPaymentAmount:tprice];
                break;
            case 2:
                letspay.paymentDelegate = stripePay;
                [letspay processPaymentAmount:tprice];
                break;
            case 3:
                letspay.paymentDelegate = amazonPay;
                [letspay processPaymentAmount:tprice];
                break;
            case 4:
                letspay.paymentDelegate = applePay;
                [letspay processPaymentAmount:tprice];
                break;
                
            default:
                break;
        }
    }
    return 0;
}
