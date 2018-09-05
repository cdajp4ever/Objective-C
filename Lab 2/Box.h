//
//  Box.h
//  Lab 2
//
//  Created by admin on 2018-09-05.
//  Copyright © 2018 Juan Aguas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, assign) float width;
@property (nonatomic, assign) float height;
@property (nonatomic, assign) float length;

- (instancetype)initWithWidht: (float) width andHeight: (float) height andLength: (float) length;
- (float) volume;
- (float) ratio: (float) lbox andBox2: (float) sbox;

@end
