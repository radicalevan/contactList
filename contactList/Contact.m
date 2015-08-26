//
//  Contact.m
//  contactList
//
//  Created by Evan Gale on 2015-08-25.
//  Copyright © 2015 Evan Gale. All rights reserved.
//

#import "Contact.h"

@implementation ContactCollector : NSObject

-(NSString *)inputForPrompt:(NSString *)promptString{
    // 255 unit long array of characters
    char surnameInput[255];
    char firstnameInput[255];
    char emailInput[255];
    
    NSLog(@"%@", promptString);
    
    printf("Surname? ");
    // limit input to max 255 characters
    fgets(surnameInput, 255, stdin);
    
    // print as a c string
    printf("Your surname is %s\n", surnameInput);
    
    printf("First name? ");
    // limit input to max 255 characters
    fgets(firstnameInput, 255, stdin);
    
    // print as a c string
    printf("Your first name is %s\n", firstnameInput);
    
    printf("email address? ");
    // limit input to max 255 characters
    fgets(emailInput, 255, stdin);
    
    // print as a c string
    printf("Your email address is %s\n", emailInput);
    
    // convert char array to an NSString object
    NSString *badString = [NSString stringWithUTF8String:firstnameInput];
    NSRange rangedstring = [badString rangeOfString:@"\n"];
    NSString *inputString = [badString substringToIndex: rangedstring.location];
    
    NSLog(@"Your name is: %s %s", firstnameInput, surnameInput);
    NSString name = @"%s %s", firstnameInput, surnameInput;
    NSString email = @"%s", emailInput;
    

    
    return inputString;
}

@end
