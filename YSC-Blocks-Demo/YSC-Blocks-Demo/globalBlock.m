//
//  globalBlock.m
//  YSC-Blocks-Demo
//
//  Created by WalkingBoy on 2019/3/26.
//  Copyright © 2019 bujige. All rights reserved.
//

#import <Foundation/Foundation.h>

void (^myGlobalBlock)(void) = ^{
    printf("GlobalBlock\n");
};

int main() {
    
    myGlobalBlock();
    
    return 0;
}
