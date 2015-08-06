//
//  Dice.h
//  Threelow
//
//  Created by Yazan Khayyat on 2015-08-06.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property long currentValue;

-(void) randomizeCurrentValue;

-(NSDictionary *)actualDice;



@end
