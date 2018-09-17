//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by cdajp on 9/13/18.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize: (PizzaSize) size toppings: (NSArray *) toppings
{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

+ (Pizza *) largePepperoni {
    return [[Pizza alloc] initWithSize:large toppings:@[@"pepperoni", @"chesse", @"cheese"]];
}

+ (Pizza *) meatLoversWithSize: (PizzaSize)size {
    return [[Pizza alloc] initWithSize:size toppings:@[@"chicken", @"beef",@"pork"]];
}

- (NSString *) description {
    NSString *pizzaSize;
    switch (_size) {
        case small:
            pizzaSize = @"small";
            break;
        case medium:
            pizzaSize = @"medium";
            break;
        case large:
            pizzaSize = @"large";
            break;
            
        default:
            break;
    }
    NSUInteger count = _toppings.count;
    if (count == 2) {
        return [NSString stringWithFormat:@"Size: %@, Toppings: %@, %@.", pizzaSize, _toppings[0], _toppings[1]];
    } else if (count == 1) {
        return [NSString stringWithFormat:@"Size: %@, Toppings: %@.", pizzaSize, _toppings[0]];
    } else {
    return [NSString stringWithFormat:@"Size: %@, Toppings: %@, %@, %@.", pizzaSize, _toppings[0], _toppings[1], _toppings[2]];
    }
}
@end
