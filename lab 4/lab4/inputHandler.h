//
//  inputHandler.h
//  lab4
//
//  Created by cdajp on 2018-09-06.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface inputHandler : NSObject
//commands
+ (NSString *)getUserInputWithLength:(int) maxLength widthPrompt : (NSString *)prompt;
@end
