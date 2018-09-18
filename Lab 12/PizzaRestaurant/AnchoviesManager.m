//
//  AnchoviesManager.m
//  Lab 11
//
//  Created by cdajp on 9/16/18.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "AnchoviesManager.h"

@implementation AnchoviesManager

- (instancetype)initWithDeliveryService:(DeliveryService *)delivery;
{
    self = [super init];
    if (self) {
        _delivery = delivery;
    }
    return self;
}

- (BOOL)kitchen: (Kitchen *) kitchen shouldMakePizzaOfSize:(PizzaSize) size andToppings: (NSArray *) toppings {
    if ([toppings containsObject:@"anchovies"]) {
        return NO;
    }
    return YES;
}
- (BOOL)kitchenShouldUpgradeOrder: (Kitchen *) kitchen {
    return NO;
}

- (void)kitchenDidMakePizza: (Pizza *)pizza {
    // no content for this one
}

@end
