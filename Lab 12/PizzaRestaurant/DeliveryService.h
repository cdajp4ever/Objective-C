//
//  DeliveryService.h
//  Lab 12
//
//  Created by cdajp on 9/17/18.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeliveryCar.h"
@class Pizza;

@interface DeliveryService : NSObject

@property (nonatomic, strong) DeliveryCar *car;
@property (nonatomic, strong) NSMutableArray *everyPizzaDelivered;


- (void) deliverPizza: (Pizza *) pizza;

@end
