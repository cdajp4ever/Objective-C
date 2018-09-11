//
//  main.m
//  Lab 6
//
//  Created by cdajp on 9/11/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController *player1 = [[GameController alloc] init];
        
        while (true) {
            NSString *input = [InputHandler getUserInputWithLength:10 widthPrompt:@"\n 'roll' to roll the dice.\n 'hold' to hold a Dice\n 'reset' will unhold all the dice\n 'hold all' will hold all the dice\n 'display' will display current score\n 'quit' to exit the game."];
            
            if ([input isEqualToString:@"roll"]) {
                [player1 roll];
                [player1 displayCurrentDeck];
                [player1 displayScore];
            } else if ([input isEqualToString:@"hold"]) {
                [player1 displayCurrentDeck];
                NSString *holdopt = [InputHandler getUserInputWithLength:10 widthPrompt:@"\n Which Die you want to hold?"];
                NSInteger optsel =  [holdopt integerValue];
                [player1 holdDie:optsel - 1];
                [player1 displayCurrentDeck];
            } else if([input isEqualToString:@"reset"]) {
                [player1 resetDice];
                [player1 displayCurrentDeck];
                
            } else if([input isEqualToString:@"hold all"]) {
                [player1 holdAll];
                [player1 displayCurrentDeck];
            } else if([input isEqualToString:@"display"]) {
                [player1 displayScore];
                [player1 displayCurrentDeck];
            }
            else if ([input isEqualToString:@"quit"]){
                break;
            }
        }
        
    }
    return 0;
}

