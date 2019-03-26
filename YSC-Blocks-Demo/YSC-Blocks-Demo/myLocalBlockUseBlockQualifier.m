//
//  myLocalBlockUseBlockQualifier.m
//  YSC-Blocks-Demo
//
//  Created by WalkingBoy on 2019/3/26.
//  Copyright © 2019 bujige. All rights reserved.
//

#import <Foundation/Foundation.h>

int main() {
    __block int a = 10, b = 20;
    void (^myLocalBlock)(void) = ^{
        a = 20;
        b = 30;
        
        printf("a = %d, b = %d\n",a, b);
    };
    
    myLocalBlock();
    
    return 0;
}
