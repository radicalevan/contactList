//
//  InputCollector.m
//  contactList
//
//  Created by Evan Gale on 2015-08-25.
//  Copyright © 2015 Evan Gale. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString{
    // 255 unit long array of characters
    char menuInput[255];
    
    NSLog(@"%@", promptString);
    
    printf("Input a string: ");
    // limit input to max 255 characters
    fgets(menuInput, 255, stdin);
    
    // print as a c string
    printf("Your string is %s\n", menuInput);
    
    // convert char array to an NSString object
    NSString *badString = [NSString stringWithUTF8String:menuInput];
    NSRange rangedstring = [badString rangeOfString:@"\n"];
    NSString *inputString = [badString substringToIndex: rangedstring.location];
    
    NSLog(@"Input was: %@", inputString);
    
    
    
    return inputString;
}

@end
