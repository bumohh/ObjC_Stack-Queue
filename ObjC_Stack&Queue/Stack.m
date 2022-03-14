//
//  Stack.m
//  ObjC_Stack&Queue
//
//  Created by Bruno Gomez on 3/13/22.
//

#import <Foundation/Foundation.h>
#import "Stack.h"

@implementation Stack

- (instancetype)init {
    self = [super init];
    
    if (self) {
        _stackArr = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)push:(id)value {
    [self.stackArr addObject:value];
}

- (id)pop {
    if (self.stackArr.count > 0) {
        long index = _stackArr.count - 1;
        id value = _stackArr[index];
        [self.stackArr removeObjectAtIndex:index];
        return value;
    }
    return nil;
}

- (NSString *)getStack {
    return [NSString stringWithFormat:@"The stack is : %@", self.stackArr];
}
@end
