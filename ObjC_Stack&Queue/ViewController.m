//
//  ViewController.m
//  ObjC_Stack&Queue
//
//  Created by Bruno Gomez on 3/13/22.
//

#import "ViewController.h"
#import "Stack.h"
#import "Queue.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //string stack
    Stack<NSString *> *stringStack = [[Stack alloc] init];
    [stringStack push:@"hi"];
    [stringStack push:@"hello"];
    [stringStack push:@"hello again"];
    NSLog(@"%@", [stringStack getStack]);
    NSLog(@"Removed : %@", [stringStack pop]);
    NSLog(@"%@", [stringStack getStack]);
    
    
    //number stack
    Stack<NSNumber *> *numberStack = [[Stack alloc] init];
    [numberStack push:@1];
    [numberStack push:@2];
    [numberStack push:@3];
    NSLog(@"%@", [numberStack getStack]);
    NSLog(@"Removed : %@", [numberStack pop]);
    NSLog(@"%@", [numberStack getStack]);
    
    //string queue
    
    Queue<NSString *> *stringQueue = [[Queue alloc] init];
    [stringQueue queue:@"hi"];
    [stringQueue queue:@"hello"];
    [stringQueue queue:@"hello again"];
    NSLog(@"%@", [stringQueue getQueue]);
    NSLog(@"Removed : %@", [stringQueue dequeue]);
    NSLog(@"%@", [stringQueue getQueue]);
    
    
    Queue<NSNumber *> *numberQueue = [[Queue alloc] init];
    [numberQueue queue:@1];
    [numberQueue queue:@2];
    [numberQueue queue:@3];
    NSLog(@"%@", [numberQueue getQueue]);
    NSLog(@"Removed : %@", [numberQueue dequeue]);
    NSLog(@"%@", [numberQueue getQueue]);
}


@end
