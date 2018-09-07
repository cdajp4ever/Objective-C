//
//  InputHandler.h
//  Lab 3
//
//  Created by jaguas on 2018-09-06.
//  Copyright © 2018 jaguas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject
+ (NSString *) getUserInputWithLength: (int) maxLength widthPrompt: (NSString *) prompt;
@end
