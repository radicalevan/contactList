//
//  main.m
//  contactList
//
//  Created by Evan Gale on 2015-08-25.
//  Copyright © 2015 Evan Gale. All rights reserved.
//

//Now back in main.m, create your ContactList instance outside your main-menu while loop, so that it isn't reset each loop.

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "ContactCollector.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        InputCollector *inputcollector = [InputCollector new];
        ContactList *contactlist = [ContactList new];

        NSString *keptThing = @"blah";
        NSString *showNumber = @"blah";
        NSString *findName = @"blah";
        
        
        
        while (![keptThing isEqualToString:@"quit"]) {
        
            keptThing = [inputcollector inputForPrompt:@"What would you like to do next? Type 'new' to create a new contact. Type 'list' to list all of your contacts. Type 'show' to show. Type 'find' and a name to find. Type 'quit' to exit the application."];
            
            if ([keptThing isEqualToString:@"new"]){
                ContactCollector *contactCollector = [ContactCollector new];
                
                BOOL shouldKeepAskingForEmail = YES;
                
                while (shouldKeepAskingForEmail) {
                    BOOL isEmailValid = YES;
                    
                    contactCollector.email = [inputcollector inputForPrompt:@"What is your email address?"];
                    for (int i = 0; i < contactlist.cList.count; i++) {
                        ContactCollector *cc = [contactlist.cList objectAtIndex:i];
                        if ([contactCollector.email isEqualToString:cc.email]) {
                            isEmailValid = NO;
                            NSLog(@"That email has already been entered, please try again.");
                        }
                    }
                    
                    if (isEmailValid) {
                        shouldKeepAskingForEmail = NO;
                    }
                }

                NSString *surName = [inputcollector inputForPrompt:@"What is your surname?"];
                NSString *firstName = [inputcollector inputForPrompt:@"What is your first name?"];
                NSString *space = @" ";
                NSString *nameSpace = [firstName stringByAppendingString:space];
                
                contactCollector.name = [nameSpace stringByAppendingString:surName];
                
                NSLog(@"Your name and email are %@," "%@", contactCollector.name, contactCollector.email);
                [contactlist putContact: contactCollector];
            }
            else if ([keptThing isEqualToString:@"list"]){
                NSLog(@"Your contacts are:\n");
                for (int i=0; i<contactlist.cList.count; i++) {
                    ContactCollector *cc = contactlist.cList[i];
                    NSLog(@"%d, %@, %@\n",i , cc.name, cc.email);
                }
            }
            else if ([keptThing isEqualToString:@"show"]) {
                showNumber = [inputcollector inputForPrompt:@"Type the number of the contact you wish to show."];
                ContactCollector *cc = contactlist.cList[showNumber.integerValue];
                NSLog(@"Your contact is: %@, %@\n", cc.name, cc.email);
            }
            else if ([keptThing containsString:@"find"]) {
                if (keptThing.length < 5) {
                    
                } else {
                    findName = [keptThing substringFromIndex:5];
                    for (int i=0; i<contactlist.cList.count; i++) {
                        // ContactCollector = contactlist.cList[i];
                        if ([findName isEqualToString:contactlist.cList[i]]) {
                            NSLog(@"Your contact is %@" ,findName);
                        }
                    }
                }
            }
            else if ([keptThing isEqualToString:@"quit"]){
                NSLog(@"quitting!");
            }
    }
        return 0;
}
}
