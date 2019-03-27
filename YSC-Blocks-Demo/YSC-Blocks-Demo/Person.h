//
//  Person.h
//  YSC-Blocks-Demo
//
//  Created by WalkingBoy on 2019/3/27.
//  Copyright © 2019 bujige. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^myBlock)(void);


@interface Person : NSObject

@property (nonatomic, copy) myBlock blk;

@end
