//
//  ContactList.h
//  lab4
//
//  Created by cdajp on 2018-09-07.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "contact.h"
@interface ContactList : NSObject
@property(nonatomic,strong) NSMutableArray *contactList;

-(void)addcontact : (contact *)newcontact;



@end
