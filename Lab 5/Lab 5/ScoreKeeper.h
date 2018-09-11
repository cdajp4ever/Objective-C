//
//  ScoreKeeper.h
//  Lab 5
//
//  Created by cdajp on 9/10/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) int right;
@property (nonatomic, assign) int wrong;

- (void) scoreRight: (int) right andWrong: (int) wrong;
@end
