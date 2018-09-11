//
//  AdditionQuestion.m
//  Lab 5
//
//  Created by cdajp on 9/10/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        // generate 2 random ints
        _leftValue = arc4random_uniform(90) + 10;
        _rightValue = arc4random_uniform(90) + 10;
        _startTime = [NSDate date];
    }
    return self;
}
- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTime {
    return [_endTime timeIntervalSinceDate:_startTime];
}

- (void) generateQuestion{
    
}

@end
