//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"
@implementation Kitchen

- (BOOL)kitchen: (Kitchen *) kitchen shouldMakePizzaOfSize:(PizzaSize) size andToppings: (NSArray *) toppings {
    return [self.delegate kitchen:kitchen shouldMakePizzaOfSize:size andToppings:toppings];
}
- (BOOL)kitchenShouldUpgradeOrder: (Kitchen *) kitchen {
    return [self.delegate kitchenShouldUpgradeOrder:kitchen];
}

- (void)kitchenDidMakePizza: (Pizza *)pizza {
    
}

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
//    if(self.delegate == nil) {
        return [[Pizza alloc] initWithSize:size toppings:toppings];
    
//    } else if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
//        if ([self.delegate kitchenShouldUpgradeOrder:self]) {
//            pizza = [[Pizza alloc] initWithSize:large toppings:toppings];
//        }
//        if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]){
//            [self.delegate kitchenDidMakePizza:pizza];
//        }
//        return pizza;
//    }
//    NSLog(@"No Pizza for you anchiove lover!!");
//    return nil;
}

@end
