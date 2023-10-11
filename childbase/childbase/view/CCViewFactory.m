//
//  CCViewFactory.m
//  childbase
//
//  Created by liht29 on 2023/10/11.
//  Copyright © 2023年 liht29. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCViewFactory.h"

@interface CCViewFactory ()

@end


@implementation CCViewFactory

+(UIImage *)produceImageKind:(CCKind)kind{
    if (CCKindFish == kind) {
        return [UIImage imageNamed:@"fish"];
    } else if (CCKindThief == kind) {
        return [UIImage imageNamed:@"thief"];
    } else if (CCKindCandy == kind) {
        return [UIImage imageNamed:@"candy"];
    } else if (CCKindPinecone == kind) {
        return [UIImage imageNamed:@"pinecone"];
    } else if (CCKindBanana == kind) {
        return [UIImage imageNamed:@"banana"];
    } else if (CCKindGold == kind) {
        return [UIImage imageNamed:@"gold"];
    } else {
        return [UIImage imageNamed:@"fish"];
    }
}

@end
