//
//  Queue.h
//  ObjC_Stack&Queue
//
//  Created by Bruno Gomez on 3/14/22.
//

#ifndef Queue_h
#define Queue_h


#endif /* Queue_h */

@interface Queue<T> : NSObject
- (void)queue:(T)value;
- (T)dequeue;
- (NSString *)getQueue;
@property(nonatomic, strong) NSMutableArray<id> *queueArr;
@end
