//
//  RandomObjectFactory.h
//  childbase
//
//  Created by liht29 on 2023/10/14.
//  Copyright © 2023年 liht29. All rights reserved.
//

#ifndef RandomObjectFactory_h
#define RandomObjectFactory_h

#import <Foundation/Foundation.h>
#import "CCLevel.h"
#import "CCTrial.h"

@interface RandomObjectFactory : NSObject

+ (CCLevel *) buildLevel:(NSInteger) idx;

@end


#endif /* RandomObjectFactory_h */
