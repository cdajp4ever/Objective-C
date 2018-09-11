//
//  Dice.h
//  Lab 6
//
//  Created by cdajp on 9/11/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject


@property (nonatomic, assign) NSUInteger faceValue;
@property (nonatomic, assign) Boolean held;

+ (instancetype) dice;
- (void) roll;


@end
