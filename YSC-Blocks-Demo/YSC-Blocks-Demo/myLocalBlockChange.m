//
//  myLocalBlockChange.m
//  YSC-Blocks-Demo
//
//  Created by WalkingBoy on 2019/3/26.
//  Copyright © 2019 bujige. All rights reserved.
//

#import <Foundation/Foundation.h>

int global_val = 10; // 全局变量
static int static_global_val = 20;   // 静态全局变量

int main() {
    
    static int static_val = 30; // 静态变量
    
    void (^myLocalBlock)(void) = ^{
        global_val *= 1;
        static_global_val *= 2;
        static_val *= 3;
        
        printf("static_val = %d, static_global_val = %d, global_val = %d\n",static_val, static_global_val, static_val);
    };
    
    myLocalBlock();
    
    return 0;
}

