//
//  CCTrial.h
//  childbase
//
//  Created by liht29 on 2023/10/18.
//  Copyright © 2023年 liht29. All rights reserved.
//

#ifndef CCTrial_h
#define CCTrial_h

#import "CCkind.h"

@interface CCTrial : NSObject

@property(nonatomic,  assign) bool isPractice;
@property(nonatomic, assign) NSInteger leftNums;
@property(nonatomic, assign) NSInteger rightNums;
@property(nonatomic, assign) CCKind type;

@end


#endif /* CCTrial_h */
