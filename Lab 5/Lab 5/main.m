//
//  main.m
//  Lab 5
//
//  Created by cdajp on 9/10/18.
//  Copyright © 2018 cdajp. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        NSLog(@"MATHS!\n\n\n");
        NSString *right = @"Right!\n";
        NSString *wrong = @"Wrong!\n";
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        InputHandler *inputHandler = [[InputHandler alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        while (gameOn) {
            Question *q = [questionFactory generateRandomQuestion];
            [q generateQuestion];
            [[questionManager questions] addObjectsFromArray:q];
            
            NSString *userAnswer = [InputHandler getUserInputWithLength:10 widthPrompt:[q question]];
            NSInteger userAnsInt = [userAnswer integerValue];
            if ([q answer] == userAnsInt) {
                NSLog(@"%@",right);
                [scoreKeeper setRight:[scoreKeeper right] + 1];

            } else if([userAnswer isEqualToString:@"quit"]) {
                gameOn = NO;
            } else {
                NSLog(@"%@",wrong);
                [scoreKeeper setWrong:[scoreKeeper wrong] + 1];
            }
            [scoreKeeper scoreRight:[scoreKeeper right] andWrong:[scoreKeeper wrong]];
            NSLog(@"%@", [questionManager timeOutput]);
        }
    }
    
    return 0;
}
