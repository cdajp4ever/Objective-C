//
//  GameController.h
//  Lab 6
//
//  Created by cdajp on 9/11/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic, strong) NSMutableArray *displayDice;

- (void) roll;
- (void) displayCurrentDeck;
- (void) holdDie: (NSUInteger) die;
- (void) resetDice;
- (void) holdAll;
- (void) displayScore;

@end
