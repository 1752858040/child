//
//  Student.h
//  childbase
//
//  Created by liht29 on 2023/10/5.
//  Copyright © 2023年 liht29. All rights reserved.
//

#ifndef Student_h
#define Student_h

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property(nonatomic, strong) NSString * name;
@property(nonatomic, strong) NSString * cid;
@property(nonatomic, strong) NSDate * birthDate;
@property(nonatomic, strong ) NSDate *testDate;
@property(nonatomic, strong) NSDate *admissionDate;
@property(nonatomic, strong) NSString * gender;
@property(nonatomic, strong) NSString * group;

@end


#endif /* Student_h */
