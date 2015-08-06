//
//  GameController.h
//  Threelow
//
//  Created by Yazan Khayyat on 2015-08-06.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property (nonatomic, strong) NSMutableArray *dice;
@property (nonatomic, strong) NSMutableArray *heldDice;

-(void)holdDie:(int)givenDice;

-(void)printAllDice;

-(void)rollAllDice;

-(void)resetAll;

-(void)showScore;

@end
