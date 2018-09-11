//
//  main.m
//  lab4
//
//  Created by cdajp on 2018-09-07.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "inputHandler.h"
#import "contact.h"
#import "ContactList.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ContactList *contactlist=[[ContactList alloc]init];
        
        while(true){
            
            NSString *menu= @"What would you like to do next?  new list?";
            NSString *option =[inputHandler getUserInputWithLength:20 widthPrompt:menu];
            if([option isEqualToString:@"quit"]){
                 break;
            }else if ([option isEqualToString:@"new"]){
                //1. get user input for name and email
                NSString *name=[inputHandler getUserInputWithLength:255 widthPrompt:@"enter the name"];
                NSString *email=[inputHandler getUserInputWithLength:255 widthPrompt:@"enter the email"];
                
                //2 create a contact object based on the user
                contact *newContact = [[contact alloc]initWithname:name andemail:email];
                
                // 3 add the contact to contactlist contactlist
                [contactlist addcontact:newContact];
                
            
            }else if ([option isEqualToString:@"list"]){
                NSLog(@"%@",contactlist);
            }
            
            
        }
        //[[[contact alloc]initWithName:@"john smith" andemail:@"js@email.com"]];
        //NSlog(@"%@",contact);
      
    }
    return 0;
}
