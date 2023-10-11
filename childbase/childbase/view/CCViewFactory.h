//
//  CCViewFactory.h
//  childbase
//
//  Created by liht29 on 2023/10/11.
//  Copyright © 2023年 liht29. All rights reserved.
//

#ifndef CCViewFactory_h
#define CCViewFactory_h

typedef enum _CCKind{
    CCKindFish = 0,
    CCKindThief,
    CCKindCandy,
    CCKindPinecone,
    CCKindGold,
    CCKindBanana,
}CCKind;

#import<UIKit/UIKit.h>

@interface CCViewFactory : NSObject

+(UIImage*) produceImageKind:(CCKind) kind;

@end


#endif /* CCViewFactory_h */
