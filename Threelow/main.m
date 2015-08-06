//
//  main.m
//  Threelow
//
//  Created by Yazan Khayyat on 2015-08-06.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputCollector.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController *gameController = [[GameController alloc]init];
        
        
        BOOL rolling = YES;
        
        while (rolling) {
            InputCollector *collector = [[InputCollector alloc]init];
            NSString *userInput = [collector inputForPrompt:@"Enter roll to roll\n Hold: Hold a number\n Reset: Reset held numbers\n Score: show score"];
            
            if ([userInput isEqualToString:@"roll"]) {
                
                [gameController rollAllDice];
                
                [gameController printAllDice];
                
            } else if ([userInput isEqualToString:@"hold"]) {
                NSString *diceChoice = [collector inputForPrompt:@"Enter the dice number that you want to hold"];
                
                    
                    if ([diceChoice isEqualToString:@"1"]) {
                        [gameController holdDie:1];
                    }
                    else if ([diceChoice isEqualToString:@"2"]) {
                        [gameController holdDie:2];
                    }
                    else if ([diceChoice isEqualToString:@"3"]) {
                        [gameController holdDie:3];
                    }
                    else if ([diceChoice isEqualToString:@"4"]) {
                        [gameController holdDie:4];
                    }
                    else if ([diceChoice isEqualToString:@"5"]) {
                        [gameController holdDie:5];
                    }
                [gameController printAllDice];
                
            }
            else if ([userInput isEqualToString:@"reset"]) {
                [gameController resetAll];
            
            }else if([userInput isEqualToString:@"score"]) {
                [gameController showScore];
            }
        }
        
        
    }
    
    return 0;
    
}





