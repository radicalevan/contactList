//
//  Contact.h
//  contactList
//
//  Created by Evan Gale on 2015-08-25.
//  Copyright © 2015 Evan Gale. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContactCollector : NSObject

@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *name;


-(NSString *)inputForPrompt:(NSString *)promptString;


@end
