//
//  CCLevel.h
//  childbase
//
//  Created by liht29 on 2023/10/18.
//  Copyright © 2023年 liht29. All rights reserved.
//

#ifndef CCLevel_h
#define CCLevel_h

#import "CCTrial.h"

@interface CCLevel : NSObject

@property(nonatomic, assign) NSInteger idx;
@property(nonatomic, strong) NSMutableArray <CCTrial *> *trials;

@end

#endif /* CCLevel_h */
