//
//  Dice.m
//  Threelow
//
//  Created by Yazan Khayyat on 2015-08-06.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(void) randomizeCurrentValue {
    self.currentValue = random() % 6+1;

}

@end
