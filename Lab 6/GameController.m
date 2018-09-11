//
//  GameController.m
//  Lab 6
//
//  Created by cdajp on 9/11/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import "GameController.h"
#define MAX_ROLL 5
@interface GameController()
{
    @private int rollCount;
}
@end

@implementation GameController



- (instancetype)init
{
    self = [super init];
    if (self) {
        _displayDice = [NSMutableArray arrayWithObjects:[Dice dice], [Dice dice], [Dice dice], [Dice dice], [Dice dice], nil];
        rollCount = MAX_ROLL;
    }
    return self;
}

- (void) roll {
    // if I have more than 1 roll count left, I can roll all 5 dice in the array
    // except for the ones that are held by user
    if (rollCount > 0) {
        for (Dice *die in _displayDice){
            if (![die held]) {
                [die roll];
            }
        }
        rollCount--;
        NSLog(@"Remaining Rolls: %d", rollCount);
    } else {
        NSLog(@"Your current rolls are %d, You can't roll more than %d times.", rollCount, MAX_ROLL);
    }
}

- (void) displayCurrentDeck {
    NSMutableString *currentDeck = [NSMutableString string];
    for (Dice *die in _displayDice) {
        [currentDeck appendFormat:@" %@ ",[die description]];
    }
    NSLog(@"%@", currentDeck);
}

- (void) holdDie: (NSUInteger) die {
    // 1. check if the die is already held or not
    Dice *selectedDie = [_displayDice objectAtIndex:die];
    if(![selectedDie held]){
        [selectedDie setHeld:true];
    } else {
        NSLog(@"This Die has been hold already!");
    }
}

- (void) resetDice {
    // 1. iterate through each die, and unhold every die.
    for(Dice *die in _displayDice) {
        [die setHeld:false];
    }
    NSLog(@"\nAll the Dice have been unhold");
}

- (void) holdAll {
    // 1. iterate through each die, and hold every die.
    for(Dice *die in _displayDice) {
        [die setHeld:true];
    }
    NSLog(@"All the Dice have been hold!");
}

- (void) displayScore {
    NSInteger score = 0;
    for(Dice *die in _displayDice) {
        if ([die held]) {
            score += [die faceValue];
        }
    }
    // 1. check if the game is done (run out of rolls) print game over
    if(rollCount == 0){
        NSInteger tscore = 0;
        for(Dice *die in _displayDice) {
            tscore += [die faceValue];
        }
        NSLog(@"GAME OVER!!!");
        NSLog(@"Current Score: %lu", tscore);
    } else if(rollCount > 0) {
        NSLog(@"Current Score: %lu", score);
    }
    // 2. print current deck and score (the sum of faceValues)
    // 3. if game is not over. Print current deck and score (the sum of faceValue)
}
@end








