//
//  PigLatinization.m
//  Lab 13
//
//  Created by cdajp on 9/17/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import "PigLatinization.h"

@implementation PigLatinization

- (NSString *)stringbyPigLatinization: (NSString *) frase {
    
    frase = [frase lowercaseString];
    NSString *clusterCheck;
    NSString *firstLetter;
    NSArray *cluster = @[@"ch",@"sh",@"sm",@"st",@"th",@"ps",@"ph",@"pl",@"gl"];
    NSArray *vowel = @[@"a",@"e",@"i",@"o",@"u"];
    NSArray *consonants = @[@"b",@"c",@"d",@"f",@"g",@"h",@"j",@"k",@"l",@"m",@"n",
                            @"p",@"q",@"r",@"s",@"t",@"v",@"w",@"x",@"y",@"z"];
    NSMutableString *result = [NSMutableString string];
    Boolean iscluster = false;
    
    if(frase.length > 1) {
        clusterCheck = [frase substringToIndex:2];
        for (NSInteger i = 0; i < cluster.count; i++) {
            NSString *clus = [cluster objectAtIndex:i];
            if([clusterCheck isEqualToString:clus]) {
                [result appendString:[frase substringFromIndex:2]];
                [result appendString:clusterCheck];
                [result appendString:@"ay"];
                iscluster = true;
                i = cluster.count;
            }
        }
    } else {
        firstLetter = [frase substringToIndex:1];
    }
    firstLetter = [frase substringToIndex:1];
    if(!iscluster){
        for(NSInteger i = 0; i < vowel.count; i++) {
            NSString *vow = [vowel objectAtIndex:i];
            if([firstLetter isEqualToString:vow]) {
                [result appendString:frase];
                [result appendString:@"ay"];
                i = vowel.count;
            }
        }
        if(result.length == 0){
            for(NSInteger i = 0; i < consonants.count; i++) {
                NSString *cons = [consonants objectAtIndex:i];
                if([firstLetter isEqualToString:cons]){
                    [result appendString:[frase substringFromIndex:1]];
                    [result appendString:firstLetter];
                    [result appendString:@"ay"];
                    i = consonants.count;
                }
            }
        }
    }
    NSString *piglat = result;
    return piglat;
}

@end
