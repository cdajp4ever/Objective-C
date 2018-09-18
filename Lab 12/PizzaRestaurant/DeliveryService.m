//
//  DeliveryService.m
//  Lab 12
//
//  Created by cdajp on 9/17/18.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "Pizza.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _car = [DeliveryCar new];
        _everyPizzaDelivered = [NSMutableArray array];
    }
    return self;
}

- (void) deliverPizza:(Pizza *)pizza {
    [self.everyPizzaDelivered addObject: [pizza description]];
    [self.car deliverPizza:pizza];
    [self description];
    
}

- (NSString *) description {
    
    NSMutableString *fulldesc = [NSMutableString string];
    
    for (NSMutableString *start in self.everyPizzaDelivered) {
        [fulldesc appendString: @"\n+ "];
        [fulldesc appendString:start];
        [fulldesc appendString:@" "];
    }
    return [NSString stringWithFormat:@"%@", fulldesc];
}



@end
