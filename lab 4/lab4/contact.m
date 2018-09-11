//
//  contact.m
//  lab4
//
//  Created by cdajp on 2018-09-07.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import "contact.h"

@implementation contact
-(instancetype)initWithname:(NSString*)name andemail:(NSString*)email
{
    self=[super init];
    if(self){
        _name = name;
        _email = email;
        
    }
    return self;
}
-(NSString *)description
{
    return [NSString stringWithFormat:@"<%@>(%@)",self.name,self.email];
}

@end
