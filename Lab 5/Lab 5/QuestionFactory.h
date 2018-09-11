//
//  QuestionFactory.h
//  Lab 5
//
//  Created by cdajp on 9/10/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property (nonatomic, strong) NSArray *questionTypes;
- (Question *) generateRandomQuestion;
@end
