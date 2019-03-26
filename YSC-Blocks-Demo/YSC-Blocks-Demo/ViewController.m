//
//  ViewController.m
//  YSC-Blocks-Demo
//
//  Created by WalkingBoy on 2019/3/5.
//  Copyright © 2019 bujige. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

/* Blocks 变量作为带有 property 声明的成员变量 */
@property (nonatomic, copy) void (^myPropertyBlock) (void);
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self useBlockQualifierChangeLocalVariables];
}

// Blocks 变量作为本地变量
- (void)useBlockAsLocalVariable {
    
    void (^myLocalBlock)(void) = ^{
        NSLog(@"useBlockAsLocalVariable");
    };
    
    myLocalBlock();
}

// Blocks 变量作为带有 property 声明的成员变量
- (void)useBlockAsProperty {
    self.myPropertyBlock = ^{
        NSLog(@"useBlockAsProperty");
    };
    
    self.myPropertyBlock();
}

// Blocks 变量作为 OC 方法参数
- (void)someMethodThatTakesABlock:(void (^)(NSString *)) block {
    
    block(@"someMethodThatTakesABlock:");
}

// 调用含有 Block 参数的 OC方法
- (void)useBlockAsMethodParameter {
    [self someMethodThatTakesABlock:^(NSString *str) {
        NSLog(@"%@",str);
    }];
}

// Blocks 变量作为 typedef 声明类型
- (void)useBlockAsATypedef {
    
    typedef void (^TypeName)(void);
    // 之后就可以使用 TypeName 来定义无返回类型、无参数列表的 block 了。
    
    TypeName myTypedefBlock = ^{
        NSLog(@"useBlockAsATypedef");
    };
    myTypedefBlock();
}

// 使用 Blocks 截获局部变量值
- (void)useBlockInterceptLocalVariables {
    int a = 10, b = 20;
    void (^myLocalBlock)(void) = ^{
        printf("a = %d, b = %d\n",a, b);
    };
    
    myLocalBlock();

    a = 20;
    b = 30;
    
    myLocalBlock();
}
    
// 使用 __block 说明符修饰，更改局部变量值
- (void)useBlockQualifierChangeLocalVariables {
    __block int a = 10, b = 20;
    void (^myLocalBlock)(void) = ^{
        a = 20;
        b = 30;
        
        printf("a = %d, b = %d\n",a, b);
    };
    
    myLocalBlock();
}


@end
