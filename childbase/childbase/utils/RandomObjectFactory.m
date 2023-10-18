//
//  RandomObjectFactory.m
//  childbase
//
//  Created by liht29 on 2023/10/14.
//  Copyright © 2023年 liht29. All rights reserved.
//


#import "RandomObjectFactory.h"
#import "NSMutableArray+Shuffling.h"
#import <Foundation/Foundation.h>

@interface RandomObjectFactory ()

@end

@implementation RandomObjectFactory

+ (CCLevel *) buildLevel:(NSInteger) idx {
    CCLevel *level = [[CCLevel alloc] init];
    level.idx = idx;
    NSMutableArray *trials = @[].mutableCopy;
    if ( idx == 1) {
        NSArray *test = [RandomObjectFactory produce_1_2_random_test];
        NSArray *same = [RandomObjectFactory produce_1_random_same];
        NSArray *diff = [RandomObjectFactory produce_1_diff];
        NSMutableArray * temp = [NSMutableArray arrayWithArray:test];
        [temp addObjectsFromArray:same];
        [temp addObjectsFromArray:diff];
        
        for (NSArray *item in temp) {
            CCTrial *trial = [[CCTrial alloc] init];
            trial.leftNums = [item[0] integerValue];
            trial.rightNums = [item[1] integerValue];
            trial.isPractice = false;
            trial.type = CCKindGold;
            [trials addObject:trial];
        }
    } else if (idx == 2) {
        
    } else if (idx == 3 || idx == 4) {
        
    } else if (idx == 5 || idx ==6) {
        
    } else if (idx == 7 || idx == 8) {
        
    } else if (idx == 9 || idx == 10) {
        
    } else if (idx == 11 || idx == 12) {
        
    } else if (idx == 13 || idx == 14) {
        
    } else if (idx == 15) {
        
    } else if (idx == 16) {
        
    }
    level.trials = trials;
    return level;
}

+ (NSArray *) produce_1_2_random_test {
    NSArray* t1 = @[@5, @15].copy;
    NSArray* t2 = @[@8, @20].copy;
    NSArray* t3 = @[@12, @6].copy;
    NSArray* t4 = @[@15, @5].copy;
    NSArray* t5 = @[@20, @8].copy;
    NSArray* t6 = @[@6, @12].copy;
    NSMutableArray *randomList = @[].mutableCopy;
    [randomList addObjectsFromArray:@[t1, t2, t3 ,t4 ,t5, t6]];
    [randomList shuffle];
    return randomList;
}

+ (NSArray *)produce_3_4_random_test {
    NSArray* t1 = @[@6, @15].copy;
    NSArray* t2 = @[@15, @5].copy;
    NSArray* t3 = @[@7, @21].copy;
    NSArray* t4 = @[@10, @25].copy;
    NSMutableArray *randomList = @[].mutableCopy;
    [randomList addObjectsFromArray:@[t1, t2, t3 ,t4]];
    [randomList shuffle];
    return randomList;
}

+ (NSArray *)produce_5_6_random_test {
    NSArray* t1 = @[@6, @12].copy;
    NSArray* t2 = @[@8, @20].copy;
    NSArray* t3 = @[@14, @7].copy;
    NSArray* t4 = @[@10, @25].copy;
    NSMutableArray *randomList = @[].mutableCopy;
    [randomList addObjectsFromArray:@[t1, t2, t3 ,t4]];
    [randomList shuffle];
    return randomList;
}

+ (NSArray *)produce_1_random_same {
    NSArray* t1 = @[@5, @15].copy;
    NSArray* t2 = @[@6, @18].copy;
    NSArray* t3 = @[@7, @21].copy;
    NSArray* t4 = @[@15, @5].copy;
    NSArray* t5 = @[@18, @6].copy;
    NSArray* t6 = @[@21, @7].copy;
    
    
    NSArray* t7 = @[@6, @15].copy;
    NSArray* t8 = @[@8, @20].copy;
    NSArray* t9 = @[@10, @25].copy;
    NSArray* t10 = @[@15, @6].copy;
    NSArray* t11 = @[@20, @8].copy;
    NSArray* t12 = @[@25, @10].copy;
    
    NSArray* t13 = @[@6, @12].copy;
    NSArray* t14 = @[@7, @14].copy;
    NSArray* t15 = @[@8, @16].copy;
    NSArray* t16 = @[@12, @6].copy;
    NSArray* t17 = @[@14, @7].copy;
    NSArray* t18 = @[@16, @8].copy;
    
    NSMutableArray *randomList = @[].mutableCopy;
    [randomList addObjectsFromArray:@[t1, t2, t3 ,t4, t5, t6, t7, t8, t9, t10, t11, t12, t13 ,t14, t15, t16, t17, t18]];
    [randomList shuffle];
    return randomList;
}

+ (NSArray *)produce_1_diff {
    return [RandomObjectFactory produce_1_random_same];
}

+ (NSArray *)produce_2_random_same {
    NSArray* t1 = @[@6, @9].copy;
    NSArray* t2 = @[@8, @12].copy;
    NSArray* t3 = @[@10, @15].copy;
    NSArray* t4 = @[@9, @6].copy;
    NSArray* t5 = @[@12, @8].copy;
    NSArray* t6 = @[@15, @10].copy;
    
    
    NSArray* t7 = @[@6, @8].copy;
    NSArray* t8 = @[@9, @12].copy;
    NSArray* t9 = @[@12, @16].copy;
    NSArray* t10 = @[@8, @6].copy;
    NSArray* t11 = @[@12, @9].copy;
    NSArray* t12 = @[@16, @12].copy;
    
    NSArray* t13 = @[@8, @10].copy;
    NSArray* t14 = @[@12, @15].copy;
    NSArray* t15 = @[@16, @20].copy;
    NSArray* t16 = @[@10, @8].copy;
    NSArray* t17 = @[@15, @12].copy;
    NSArray* t18 = @[@20, @16].copy;
    
    NSMutableArray *randomList = @[].mutableCopy;
    [randomList addObjectsFromArray:@[t1, t2, t3 ,t4, t5, t6, t7, t8, t9, t10, t11, t12, t13 ,t14, t15, t16, t17, t18]];
    [randomList shuffle];
    return randomList;
}

+ (NSArray *)produce_2_diff {
    return [RandomObjectFactory produce_2_random_same];
}

+ (NSArray *)produce_3_4_random_same {
    NSArray* t1 = @[@6, @15].copy;
    NSArray* t2 = @[@8, @20].copy;
    NSArray* t3 = @[@10, @25].copy;
    NSArray* t4 = @[@12, @30].copy;
    NSArray* t5 = @[@15, @6].copy;
    NSArray* t6 = @[@20, @8].copy;
    NSArray* t7 = @[@25, @10].copy;
    NSArray* t8 = @[@30, @12].copy;
    
    NSArray* t9 = @[@5, @15].copy;
    NSArray* t10 = @[@6, @18].copy;
    NSArray* t11 = @[@7, @21].copy;
    NSArray* t12 = @[@8, @24].copy;
    NSArray* t13 = @[@15, @5].copy;
    NSArray* t14 = @[@18, @6].copy;
    NSArray* t15 = @[@21, @7].copy;
    NSArray* t16 = @[@24, @8].copy;

    NSMutableArray *randomList = @[].mutableCopy;
    [randomList addObjectsFromArray:@[t1, t2, t3 ,t4, t5, t6, t7, t8, t9, t10, t11, t12, t13 ,t14, t15, t16]];
    [randomList shuffle];
    return randomList;
}

+ (NSArray *)produce_3_4_diff {
    return [RandomObjectFactory produce_3_4_random_same];
}

+ (NSArray *)produce_5_6_random_same {
    NSArray* t1 = @[@5, @10].copy;
    NSArray* t2 = @[@6, @12].copy;
    NSArray* t3 = @[@7, @14].copy;
    NSArray* t4 = @[@8, @16].copy;
    NSArray* t5 = @[@10, @5].copy;
    NSArray* t6 = @[@12, @6].copy;
    NSArray* t7 = @[@14, @7].copy;
    NSArray* t8 = @[@16, @8].copy;
    
    NSArray* t9 = @[@6, @15].copy;
    NSArray* t10 = @[@8, @20].copy;
    NSArray* t11 = @[@10 ,@25].copy;
    NSArray* t12 = @[@12, @30].copy;
    NSArray* t13 = @[@15, @6].copy;
    NSArray* t14 = @[@20, @8].copy;
    NSArray* t15 = @[@25, @10].copy;
    NSArray* t16 = @[@30, @12].copy;
    
    NSMutableArray *randomList = @[].mutableCopy;
    [randomList addObjectsFromArray:@[t1, t2, t3 ,t4, t5, t6, t7, t8, t9, t10, t11, t12, t13 ,t14, t15, t16]];
    [randomList shuffle];
    return randomList;
}

+ (NSArray *)produce_5_6_diff {
    return [RandomObjectFactory produce_5_6_random_same];
}

+ (NSArray *)produce_7_8_random_same {
    NSArray* t1 = @[@6, @9].copy;
    NSArray* t2 = @[@8, @12].copy;
    NSArray* t3 = @[@10, @15].copy;
    NSArray* t4 = @[@12, @18].copy;
    NSArray* t5 = @[@9, @6].copy;
    NSArray* t6 = @[@12, @8].copy;
    NSArray* t7 = @[@15, @10].copy;
    NSArray* t8 = @[@18, @12].copy;
    
    NSArray* t9 = @[@5, @10].copy;
    NSArray* t10 = @[@6, @12].copy;
    NSArray* t11 = @[@7 ,@14].copy;
    NSArray* t12 = @[@8, @16].copy;
    NSArray* t13 = @[@10, @5].copy;
    NSArray* t14 = @[@12, @6].copy;
    NSArray* t15 = @[@14, @7].copy;
    NSArray* t16 = @[@16, @8].copy;
    
    NSMutableArray *randomList = @[].mutableCopy;
    [randomList addObjectsFromArray:@[t1, t2, t3 ,t4, t5, t6, t7, t8, t9, t10, t11, t12, t13 ,t14, t15, t16]];
    [randomList shuffle];
    return randomList;
}

+ (NSArray *)produce_7_8_diff {
    return [RandomObjectFactory produce_7_8_random_same];
}

+ (NSArray *)produce_9_10_random_same {
    NSArray* t1 = @[@6, @8].copy;
    NSArray* t2 = @[@9, @12].copy;
    NSArray* t3 = @[@12, @16].copy;
    NSArray* t4 = @[@15, @20].copy;
    NSArray* t5 = @[@8, @6].copy;
    NSArray* t6 = @[@12, @9].copy;
    NSArray* t7 = @[@16, @12].copy;
    NSArray* t8 = @[@20, @15].copy;
    
    NSArray* t9 = @[@6, @9].copy;
    NSArray* t10 = @[@8, @12].copy;
    NSArray* t11 = @[@10 ,@15].copy;
    NSArray* t12 = @[@12, @18].copy;
    NSArray* t13 = @[@9, @6].copy;
    NSArray* t14 = @[@23, @8].copy;
    NSArray* t15 = @[@15, @10].copy;
    NSArray* t16 = @[@18, @12].copy;
    
    NSMutableArray *randomList = @[].mutableCopy;
    [randomList addObjectsFromArray:@[t1, t2, t3 ,t4, t5, t6, t7, t8, t9, t10, t11, t12, t13 ,t14, t15, t16]];
    [randomList shuffle];
    return randomList;
}

+ (NSArray *)produce_9_10_diff {
    return [RandomObjectFactory produce_9_10_random_same];
}

+ (NSArray *)produce_11_12_random_same {
    NSArray* t1 = @[@8, @10].copy;
    NSArray* t2 = @[@12, @15].copy;
    NSArray* t3 = @[@16, @20].copy;
    NSArray* t4 = @[@20, @25].copy;
    NSArray* t5 = @[@10, @8].copy;
    NSArray* t6 = @[@15, @12].copy;
    NSArray* t7 = @[@20, @16].copy;
    NSArray* t8 = @[@25, @20].copy;
    
    NSArray* t9 = @[@6, @8].copy;
    NSArray* t10 = @[@9, @12].copy;
    NSArray* t11 = @[@12 ,@16].copy;
    NSArray* t12 = @[@15, @20].copy;
    NSArray* t13 = @[@8, @6].copy;
    NSArray* t14 = @[@12, @9].copy;
    NSArray* t15 = @[@16, @12].copy;
    NSArray* t16 = @[@20, @15].copy;
    
    NSMutableArray *randomList = @[].mutableCopy;
    [randomList addObjectsFromArray:@[t1, t2, t3 ,t4, t5, t6, t7, t8, t9, t10, t11, t12, t13 ,t14, t15, t16]];
    [randomList shuffle];
    return randomList;
}

+ (NSArray *)produce_11_12_diff {
    return [RandomObjectFactory produce_5_6_random_same];
}

+ (NSArray *)produce_13_14_random_same {
    NSArray* t1 = @[@5, @6].copy;
    NSArray* t2 = @[@10, @12].copy;
    NSArray* t3 = @[@15, @18].copy;
    NSArray* t4 = @[@20, @24].copy;
    NSArray* t5 = @[@6, @5].copy;
    NSArray* t6 = @[@12, @10].copy;
    NSArray* t7 = @[@18, @15].copy;
    NSArray* t8 = @[@24, @20].copy;
    
    NSArray* t9 = @[@8, @10].copy;
    NSArray* t10 = @[@12, @15].copy;
    NSArray* t11 = @[@16 ,@20].copy;
    NSArray* t12 = @[@20, @25].copy;
    NSArray* t13 = @[@10, @8].copy;
    NSArray* t14 = @[@15, @12].copy;
    NSArray* t15 = @[@20, @16].copy;
    NSArray* t16 = @[@25, @20].copy;
    
    NSMutableArray *randomList = @[].mutableCopy;
    [randomList addObjectsFromArray:@[t1, t2, t3 ,t4, t5, t6, t7, t8, t9, t10, t11, t12, t13 ,t14, t15, t16]];
    [randomList shuffle];
    return randomList;
}

+ (NSArray *)produce_13_14_diff {
    return [RandomObjectFactory produce_13_14_random_same];
}

+ (NSArray *)produce_15_random_same {
    return [RandomObjectFactory produce_1_random_same];
}

+ (NSArray *)produce_15_diff {
    return [RandomObjectFactory produce_15_random_same];
}

+ (NSArray *)produce_16_random_same {
    return [RandomObjectFactory produce_2_random_same];
}

+ (NSArray *)produce_16_diff {
    return [RandomObjectFactory produce_16_random_same];
}
@end
