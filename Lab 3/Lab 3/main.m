//
//  main.m
//  Lab 3
//
//  Created by jaguas on 2018-09-06.
//  Copyright © 2018 jaguas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
    
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        NSInteger positiveC = 0;
        NSInteger negativeC = 0;
        while (gameOn) {
            AdditionQuestion *q = [AdditionQuestion new];
            NSString *userAnswer = [InputHandler getUserInputWithLength:10 widthPrompt: [q question]];
            NSInteger userAnsInt = [userAnswer integerValue];
            NSString *scoreOutput = [ScoreKeeper totalScore:positiveC count:negativeC];
            if ([q answer] == userAnsInt) {
                NSLog(@"Right!");
                positiveC++;
                NSLog(@"%@", scoreOutput);
            
            } else if([userAnswer isEqualToString:@"quit"]) {
                gameOn = NO;
            } else {
                NSLog(@"Wrong!");
                negativeC++;
                NSLog(@"%@", scoreOutput);
            }
        }
    }
    return 0;
}
