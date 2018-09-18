//
//  CheeryManager.m
//  Lab 11
//
//  Created by cdajp on 9/16/18.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "CheeryManager.h"
#import "DeliveryService.h"

@implementation CheeryManager

- (instancetype)initWithDeliveryService:(DeliveryService *)delivery;
{
    self = [super init];
    if (self) {
        _delivery = delivery;
    }
    return self;
}

- (BOOL)kitchen: (Kitchen *) kitchen shouldMakePizzaOfSize:(PizzaSize) size andToppings: (NSArray *) toppings {
    return YES;
}
- (BOOL)kitchenShouldUpgradeOrder: (Kitchen *) kitchen {
    return YES;
}

- (void)kitchenDidMakePizza: (Pizza *)pizza {
    NSLog(@"Pizza is Done! Enjoy!");
}

@end
