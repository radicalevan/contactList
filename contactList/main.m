//
//  main.m
//  contactList
//
//  Created by Evan Gale on 2015-08-25.
//  Copyright © 2015 Evan Gale. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "ContactCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        InputCollector *inputcollector = [[InputCollector alloc] init];
        NSString *keptThing = @"foo";
        
        
        while (![keptThing isEqualToString:@"quit"]) {
        
            keptThing = [inputcollector inputForPrompt:@"What would you like to do next? Type 'new' to create a new contact. Type 'list' to list all of your contacts. Type 'Quit' to exit the application."];
            
            if ([keptThing isEqualToString:@"new"]){
                ContactCollector *contactCollector = [[ContactCollector alloc] init];

                contactCollector.email = [inputcollector inputForPrompt:@"What is your email address?"];
                NSString *surName = [inputcollector inputForPrompt:@"What is your surname?"];
                NSString *firstName = [inputcollector inputForPrompt:@"What is your first name?"];
                contactCollector.name = [firstName stringByAppendingString:surName];
                
                NSLog(@"Your name and email are %@," "%@", contactCollector.name, contactCollector.email);
            }
            else if ([keptThing isEqualToString:@"quit"]){
            // NSComparisonResult result = [InputCollector caseInsensitiveCompare:@"quit"];
                NSLog(@"quitting!");
            
        }
        
        
    }
    return 0;
}
}