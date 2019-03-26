//
//  localBlock.m
//  YSC-Blocks-Demo
//
//  Created by WalkingBoy on 2019/3/20.
//  Copyright © 2019 bujige. All rights reserved.
//

#import <Foundation/Foundation.h>

int main () {
    int a = 10, b = 20;
    void (^myLocalBlock)(void) = ^{
        printf("a = %d, b = %d\n",a, b);
    };
    
    myLocalBlock();
    
    a = 20;
    b = 30;
    
    myLocalBlock();
}
