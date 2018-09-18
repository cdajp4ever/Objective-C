//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "AnchoviesManager.h"
#import "CheeryManager.h"
#import "DeliveryService.h"
#import "DeliveryCar.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Pick a Manager:\n1. Lunch Manager\n2. Dinner Manager\n3. No Manager");
        
        NSLog(@"> ");
        char str[100];
        fgets (str, 100, stdin);
        
        NSString *chosenMgr = [[NSString alloc] initWithUTF8String:str];
        chosenMgr = [chosenMgr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSInteger opt = [chosenMgr integerValue];
        
        Kitchen *restaurantKitchen = [Kitchen new];
        DeliveryService *delivery = [DeliveryService new];
        CheeryManager *lovelyMrg = [[CheeryManager alloc] initWithDeliveryService:delivery];
        AnchoviesManager *haterMgr = [[AnchoviesManager alloc] initWithDeliveryService:delivery];

        
        switch (opt) {
            case 1:
                restaurantKitchen.delegate = haterMgr;
                break;
            case 2:
                restaurantKitchen.delegate = lovelyMrg;
                break;
            case 3:
                restaurantKitchen.delegate = nil;
                break;
            default:
                break;
        }
        while (TRUE) {
            // Loop forever
            NSLog(@"Please pick your pizza size and up to 3 toppings:");

            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            int psize = 0;
            if ([commandWords[0] isEqualToString:@"small"]) {
                psize = small;
            }else if ([commandWords[0] isEqualToString:@"medium"]) {
                psize = medium;
            }else if ([commandWords[0] isEqualToString:@"large"]){
                psize = large;
            }
            NSUInteger count = commandWords.count;
            NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, (count-1))];
            // And then send some message to the kitchen...
            
            if ([commandWords containsObject:@"pepperoni"]) {
                Pizza *pizza = [Pizza largePepperoni];
                [delivery deliverPizza:pizza];
                NSLog(@"%@",pizza);
            }
            else if ([commandWords containsObject:@"meat"]) {
                Pizza *pizza = [Pizza meatLoversWithSize:psize];
                [delivery deliverPizza:pizza];
                NSLog(@"%@",pizza);
            } else {
                Pizza *pizza = [restaurantKitchen makePizzaWithSize:psize toppings:toppings];
                if ([pizza.toppings containsObject:@"none"]) {
                    NSLog(@"Order something else!");
                } else {
                    [delivery deliverPizza:pizza];
                    NSLog(@"%@", pizza);
                }
            }
            
            NSLog(@"View all the deliveries until now: (y)/(n)? \n");
            NSLog(@"> ");
            char str1[100];
            fgets (str1, 100, stdin);
            NSString *viewanswer = [[NSString alloc] initWithUTF8String:str1];
            viewanswer = [viewanswer stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

            if ([viewanswer isEqualToString:@"y"]) {
                NSLog(@"%@", delivery);
            }
        }
    }
    return 0;
}

