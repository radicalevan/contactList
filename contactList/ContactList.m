//
//  ContactList.m
//  contactList
//
//  Created by Evan Gale on 2015-08-26.
//  Copyright © 2015 Evan Gale. All rights reserved.
//

//At this point we're taking user input, and creating a new model object using our results, but we still need to store them somewhere. To do this, create a new ContactList class, with an NSMutableArray property where it will store contacts. Make sure to instantiate a mutable array for that property in the ContactList's init method.

//Once all this is set up, add a method to your ContactList class called -(void)addContact:(Contact *)newContact, and in this method insert the contact into the ContactList's mutable array.


//Call your ContactList's addContact: method with the Contact instance you created a moment ago.


#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        //
        self.cList = [NSMutableArray new];
    }
    return self;
}


-(void)putContact:(ContactCollector *)contact {
    
    
    [self.cList addObject: contact];
}

//add contact to cList array


@end
