//
//  retainCycleBlcok.m
//  YSC-Blocks-Demo
//
//  Created by WalkingBoy on 2019/3/27.
//  Copyright © 2019 bujige. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main() {
    Person *person = [[Person alloc] init];
    __block typeof(person) blockPerson = person;

    person.blk = ^{
        NSLog(@"%@",blockPerson);
    };
    
    return 0;
}
