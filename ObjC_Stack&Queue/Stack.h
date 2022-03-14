//
//  Stack.h
//  ObjC_Stack&Queue
//
//  Created by Bruno Gomez on 3/13/22.
//

#ifndef Stack_h
#define Stack_h


#endif /* Stack_h */

@interface Stack<T> : NSObject
- (void)push:(T)value;
- (T)pop;
- (NSString *)getStack;
@property(nonatomic, strong) NSMutableArray<id> *stackArr;
@end
