//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by cdajp on 9/13/18.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    small,
    medium,
    large
} PizzaSize;

@interface Pizza : NSObject

@property (nonatomic, assign) PizzaSize size;
@property (nonatomic, strong) NSArray *toppings;

- (instancetype)initWithSize: (PizzaSize) size toppings: (NSArray *) toppings;
+ (Pizza *) largePepperoni;
+ (Pizza *) meatLoversWithSize: (PizzaSize)size;
- (NSString *) description;

@end
