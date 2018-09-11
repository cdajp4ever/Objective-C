//
//  contact.h
//  lab4
//
//  Created by cdajp on 2018-09-07.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface contact : NSObject
@property(nonatomic,strong)NSString *name;
@property(nonatomic,strong)NSString *email;
-(instancetype)initWithname:(NSString*)name andemail:(NSString*)email;
@end
