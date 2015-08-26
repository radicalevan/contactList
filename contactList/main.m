//
//  main.m
//  contactList
//
//  Created by Evan Gale on 2015-08-25.
//  Copyright © 2015 Evan Gale. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        InputCollector *inputcollector = [[InputCollector alloc] init];
        ContactCollector *contactCollector = [[ContactCollector alloc] init];
        NSString *keptThing = @"foo";
        
        
        while (![keptThing isEqualToString:@"quit"]) {
        
            keptThing = [inputcollector inputForPrompt:@"What would you like to do next? Type 'new' to create a new contact. Type 'list' to list all of your contacts. Type 'Quit' to exit the application."];
            
            if ([keptThing isEqualToString:@"new"]){
                ContactCollector
                NSLog(@"new!");
            }
            else if ([keptThing isEqualToString:@"quit"]){
            // NSComparisonResult result = [InputCollector caseInsensitiveCompare:@"quit"];
                NSLog(@"quitting!",);
            }
            NSLog(@"Your name is: %s %s", firstnameInput, surnameInput);
            
            


        }
        
        
    }
    return 0;
}