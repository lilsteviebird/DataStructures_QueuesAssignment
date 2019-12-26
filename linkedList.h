#import <Foundation/Foundation.h>
#import "node.h"

@interface linkedList : NSObject
{
  node* prev;
  node* next;
}

@property node *head;
@property node *temp;

-(void) iAdd: (NSString*)itemGiven;
-(void) rReverseLinkList: (node*) headGiven;
-(void) reverseLinkList;
-(void) displayList;
-(void) clearList;


@end
