//
//  QuestionManager.h
//  Lab 5
//
//  Created by cdajp on 9/10/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray *questions;
- (NSString *) timeOutput;

@end
