//
//  GameController.m
//  Threelow
//
//  Created by Yazan Khayyat on 2015-08-06.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _dice = [[NSMutableArray alloc] init];
        _heldDice = [[NSMutableArray alloc] init];
        for (int i = 0; i < 5; i++) {
            Dice *die = [[Dice alloc] init];
            [self.dice addObject:die];
        }
        
    }
    
    return self;

}

-(void)holdDie:(int)givenDice {
    
    Dice *chosen = self.dice[givenDice-1];
    
    if ([self.heldDice containsObject:chosen]) {
        [self.heldDice removeObject:chosen];
    } else [self.heldDice addObject:chosen];
    
    
}

-(void)printAllDice {
    for (Dice *die in self.dice) {
        
        // if die is held???
        if ([self.heldDice containsObject:die]) {
            NSLog(@"[%ld]", die.currentValue);
        }
        else {
            NSLog(@"%ld", die.currentValue);
        }
    }
}

-(void)rollAllDice {
    for (Dice *die in self.dice) {
        if (![self.heldDice containsObject:die]) {
            [die randomizeCurrentValue];
        }
        
    }
}

-(void)resetAll {
    [self.heldDice removeAllObjects];

}

-(void)showScore{
    int score = 0;
    for (Dice *die in self.dice) {
        if (die.currentValue !=3 ) {
            score += die.currentValue;

            
        }
        
    }NSLog(@"The score is %d", score);
}
@end
