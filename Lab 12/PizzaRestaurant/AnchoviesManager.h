//
//  AnchoviesManager.h
//  Lab 11
//
//  Created by cdajp on 9/16/18.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
@class DeliveryService;

@interface AnchoviesManager : NSObject <KitchedDelegate>
@property (nonatomic, strong) DeliveryService *delivery;

- (instancetype)initWithDeliveryService: (DeliveryService *) delivery;


@end
