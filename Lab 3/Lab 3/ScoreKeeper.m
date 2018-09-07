//
//  ScoreKeeper.m
//  Lab 3
//
//  Created by jaguas on 2018-09-06.
//  Copyright © 2018 jaguas. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//
//
//        // increment positive
//        _positive = _positive + 1;
//
//        // increment negative
//        _negative = _negative + 1;
//
//        // check the average
//        NSInteger sumAnswers = _negative + _positive;
//        NSInteger average = (_positive * 100) / sumAnswers;
//    }
//    return self;

+ (NSString *) totalScore: (NSInteger) pos count: (NSInteger) neg {
    
    NSInteger sumAnswers = neg + pos;
    NSInteger average = (pos * 100) / sumAnswers;
    NSString *result = [NSString stringWithFormat:@"Score: %d right, %0ld wrong ---- %2ld%%", pos, neg, average];
    return result;
}
@end
