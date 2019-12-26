#import <Foundation/Foundation.h>
#import "node.h"

@interface queue: NSObject


@property node* last;
@property node* temp;
@property node* first;

-(void) enqueue: (NSString*) itemGiven;
-(NSString*) dequeue;
-(bool) isEmpty;
-(void) displayQueue;



@end
