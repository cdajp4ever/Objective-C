//
//  InputHandler.h
//  Lab 5
//
//  Created by cdajp on 9/10/18.
//  Copyright © 2018 cdajp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

+ (NSString *) getUserInputWithLength: (int) maxLength widthPrompt: (NSString *) prompt;


@end
