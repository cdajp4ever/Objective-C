//
//  DivisionQuestion.m
//  Lab 5
//
//  Created by cdajp on 9/10/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    super.question = [NSString stringWithFormat:@"%ld / %ld =", (long)super.leftValue, (long)super.rightValue];
    
    super.answer = super.leftValue / super.rightValue;
}

@end
