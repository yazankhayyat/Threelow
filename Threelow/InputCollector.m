//
//  inputCollector.m
//  Threelow
//
//  Created by Yazan Khayyat on 2015-08-06.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector


-(NSString *)inputForPrompt:(NSString *)promptString {
    
    NSLog(@"%@\n", promptString);
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    return inputString;
}
@end
