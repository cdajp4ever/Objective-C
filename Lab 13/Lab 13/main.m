//
//  main.m
//  Lab 13
//
//  Created by cdajp on 9/17/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PigLatinization.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        PigLatinization *pig = [PigLatinization new];
        
        NSLog(@"\nPIG LATIN!");
        Boolean next = true;
        NSMutableString *piglatin = [NSMutableString string];
        

        while(next){
            [piglatin setString:@""];
            NSLog(@"\nPlease provide the frase you want to convert: \n");
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            
            NSArray *words = [inputString componentsSeparatedByString:@" "];
            
            for(int i = 0; i < words.count; i++) {
                [piglatin appendString:[pig stringbyPigLatinization:[words objectAtIndex:i]]];
                [piglatin appendString:@" "];
            }
            NSString *result = piglatin;
            NSLog(@"\n%@",[result capitalizedString]);

            NSLog(@"\nAgain (Y/N): \n");
            NSLog(@"> ");
            char str1[100];
            fgets (str1, 100, stdin);
            
            NSString *again = [[NSString alloc] initWithUTF8String:str1];
            again = [again stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
            if([again isEqualToString:@"N\n"]){
                next = false;
            } else if ([again isEqualToString:@"Y\n"]) {
                next = true;
            } else {
                return 0;
            }
        }
    }
    return 0;
}
