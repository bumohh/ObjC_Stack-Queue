//
//  ObjC_Stack_QueueUITestsLaunchTests.m
//  ObjC_Stack&QueueUITests
//
//  Created by Bruno Gomez on 3/13/22.
//

#import <XCTest/XCTest.h>

@interface ObjC_Stack_QueueUITestsLaunchTests : XCTestCase

@end

@implementation ObjC_Stack_QueueUITestsLaunchTests

+ (BOOL)runsForEachTargetApplicationUIConfiguration {
    return YES;
}

- (void)setUp {
    self.continueAfterFailure = NO;
}

@end
