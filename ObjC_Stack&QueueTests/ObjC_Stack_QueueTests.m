//
//  ObjC_Stack_QueueTests.m
//  ObjC_Stack&QueueTests
//
//  Created by Bruno Gomez on 3/13/22.
//

#import <XCTest/XCTest.h>
#import "Stack.h"
#import "Queue.h"

@interface ObjC_Stack_QueueTests : XCTestCase

@end

@implementation ObjC_Stack_QueueTests

Stack<NSNumber *> *testStack = NULL;
Queue<NSNumber *> *testQueue = NULL;
- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    testStack = [[Stack alloc] init];
    testQueue = [[Queue alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    testStack = NULL;
    testQueue = NULL;
}
- (void) testQueue_queue {
    [testQueue queue:@2];
    XCTAssertEqual(1, [[testQueue queueArr] count]);
    [testQueue queue:@3];
    XCTAssertEqual(2, [[testQueue queueArr] count]);
    [testQueue queue:@4];
    XCTAssertEqual(3, [[testQueue queueArr] count]);
}

-(void) testQueue_dequeue {
    [testQueue queue:@2];
    [testQueue queue:@3];
    [testQueue queue:@4];
    NSNumber *result = [testQueue dequeue];
    XCTAssertEqual(result, @2);
    NSNumber *result1 = [testQueue dequeue];
    XCTAssertEqual(result1, @3);
}

-(void) testQueue_getQueue {
    NSArray *dummyQueue = @[@4, @5, @6];
    [testQueue queue:@4];
    [testQueue queue:@5];
    [testQueue queue:@6];
    NSString *result = [testQueue getQueue];
    NSString *expected = [NSString stringWithFormat:@"The queue is : %@", dummyQueue];
    XCTAssertEqualObjects(result, expected);
}

- (void) testStack_push {
    [testStack push:@2];
    XCTAssertEqual(1, [[testStack stackArr] count]);
    [testStack push:@3];
    XCTAssertEqual(2, [[testStack stackArr] count]);
    [testStack push:@4];
    XCTAssertEqual(3, [[testStack stackArr] count]);
}

-(void) testQueue_pop {
    [testStack push:@4];
    [testStack push:@5];
    [testStack push:@6];
    NSNumber *result = [testStack pop];
    XCTAssertEqual(result, @6);
    NSNumber *result1 = [testStack pop];
    XCTAssertEqual(result1, @5);
}

-(void) testQueue_getStack {
    NSArray *dummyStack = @[@4, @5, @6];
    [testStack push:@4];
    [testStack push:@5];
    [testStack push:@6];
    NSString *result = [testStack getStack];
    NSString *expected = [NSString stringWithFormat:@"The stack is : %@", dummyStack];
    XCTAssertEqualObjects(result, expected);
}



@end
