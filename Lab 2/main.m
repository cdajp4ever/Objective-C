//
//  main.m
//  Lab 2
//
//  Created by admin on 2018-09-05.
//  Copyright © 2018 Juan Aguas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Box *box1 =[[Box alloc] initWithWidht:10 andHeight:10 andLength:10];
        NSLog(@"%.2f", [box1 volume]);
        Box *box2 =[[Box alloc] initWithWidht:2 andHeight:2 andLength:2];
        NSLog(@"%.2f", [box1 ratio:[box1 volume] andBox2:[box2 volume]]);
        
       
    }
    return 0;
}
