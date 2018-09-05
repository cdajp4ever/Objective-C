//
//  Box.m
//  Lab 2
//
//  Created by admin on 2018-09-05.
//  Copyright © 2018 Juan Aguas. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithWidht: (float) width andHeight: (float) height andLength: (float) length

{
    self = [super init];
    if (self) {
        _width = width;
        _height = height;
        _length = length;
        
    }
    return self;
}

- (float) volume {
    return _width * _height * _length;
}

- (float) ratio: (float) lbox andBox2: (float) sbox
{
    return lbox / sbox;
}

@end
