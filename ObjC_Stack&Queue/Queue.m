//
//  Queue.m
//  ObjC_Stack&Queue
//
//  Created by Bruno Gomez on 3/14/22.
//

#import <Foundation/Foundation.h>
#import "Queue.h"
@implementation Queue

- (instancetype)init {
    self = [super init];
    
    if (self) {
        _queueArr = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)queue:(id)value {
    [self.queueArr addObject:value];
}

- (id)dequeue {
    if (self.queueArr.count > 0) {
        long index = 0;
        id value = _queueArr[index];
        [self.queueArr removeObjectAtIndex:index];
        return value;
    }
    return nil;
}

- (NSString *)getQueue {
    return [NSString stringWithFormat:@"The queue is : %@", self.queueArr];
}
@end
