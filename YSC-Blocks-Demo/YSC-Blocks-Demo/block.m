//
//  block.m
//  YSC-Blocks-Demo
//
//  Created by WalkingBoy on 2019/3/19.
//  Copyright © 2019 bujige. All rights reserved.
//

#import <Foundation/Foundation.h>

int main () {
    void (^myBlock)(void) = ^{
        printf("myBlock\n");
    };
    
    myBlock();
    return 0;
}
