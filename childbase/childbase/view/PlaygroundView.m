//
//  PlaygroundView.m
//  childbase
//
//  Created by liht29 on 2023/10/11.
//  Copyright © 2023年 liht29. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlaygroundView.h"

@interface PlaygroundView ()

@property(nonatomic, strong) NSMutableArray <UIImageView *> * ccObjcts;

@end

@implementation PlaygroundView

-(void) refreshWithKind:(CCKind) ckind Number:(NSInteger)number{
    self.ccObjcts = @[].mutableCopy;
    for ( int i = 0 ; i < number ; ++ i) {
        CGPoint randomPos = [self randomPosition];
        CGFloat rw = randomPos.x;
        CGFloat rh = randomPos.y;
        UIImageView * iv  = [[UIImageView alloc] initWithImage:[CCViewFactory produceImageKind:ckind]];
        [iv setFrame:CGRectMake(rw, rh, 50, 50)];
        [self addSubview:iv];
        [self.ccObjcts addObject:iv];
    }
}

- (CGPoint) randomPosition {
    CGFloat w = self.frame.size.width;
    CGFloat h = self.frame.size.height;
    CGFloat rw = arc4random() % (NSInteger)w;
    CGFloat rh = arc4random() % (NSInteger)h;
    return CGPointMake(rw, rh);
}

@end
