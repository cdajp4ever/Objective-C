//
//  ScoreKeeper.m
//  Lab 5
//
//  Created by cdajp on 9/10/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (void) scoreRight: (int) right and Wrong: (int) wrong{
    int rate = ((float) right / (right + wrong)) * 100;
    NSLog(@"score: %d right, %d wrong --- %d%%", right, wrong, rate);
}

@end
