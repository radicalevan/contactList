//
//  ContactList.h
//  contactList
//
//  Created by Evan Gale on 2015-08-26.
//  Copyright © 2015 Evan Gale. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContactCollector.h"    

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *cList;

-(void)putContact:(ContactCollector *)contact;


@end
