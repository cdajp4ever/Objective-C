//
//  QuestionFactory.m
//  Lab 5
//
//  Created by cdajp on 9/10/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionTypes =@[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

- (Question *) generateRandomQuestion {
    // return an instance of +, -, *, / Question object.
    NSString *type = [_questionTypes objectAtIndex: arc4random_uniform(4)];
    
    return [[NSClassFromString(type) alloc] init];
}

@end
