//
//  ContactList.m
//  lab4
//
//  Created by cdajp on 2018-09-07.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList
-(instancetype)init{
    self =[super init];
    if(self){
        _contactList=[NSMutableArray new];
        
    }
    return self;
}
//check if it existe
-(void)addcontact : (contact *)newcontact{
    [_contactList addObject: newcontact];
}

-(NSString *)description
{
    NSMutableString *result = [NSMutableString new];
    int count = 0;
    for (contact *contact in _contactList){
        NSString *contactStr = [NSString stringWithFormat:@"@%d:%@/n",count,contact];
        //NSLog(@"%d: %@",count, contact);
        count++;
        [result appendString:contactStr];
    }
    return result;
}

@end
