#import "linkedList.h"

@implementation linkedList

-(id) init {
  self = [super init];
  if(self){
    self.head = NULL;
    self.temp = NULL;

  }
  return self;
}


-(void) reverseLinkList{
  self.temp = self.head;
  while(self.temp != nil){
    next = self.temp.next;
    self.temp.next = prev;
    prev = self.temp;
    self.temp = next;
  }
  self.head = prev;
}

-(void) rReverseLinkList: (node*) headGiven{
  if(headGiven == nil){
    self.head = prev;
  }else{
    next = headGiven.next;
    headGiven.next = prev;
    prev = headGiven;
    headGiven = next;
    [self rReverseLinkList: headGiven];
  }

}

-(void) iAdd: (NSString*) itemGiven{
  node* thingAdded = [[node alloc] initWithString:itemGiven];
  if(self.head == NULL){
    self.head = thingAdded;
  }else{
    self.temp = self.head;
    while(self.temp.next != NULL){
      self.temp = self.temp.next;
    }
    self.temp.next = thingAdded;
  }
}


-(void) displayList{
  self.temp = self.head;
  while(self.temp != NULL){
    NSLog(@"%@", self.temp.item);
    self.temp = self.temp.next;
  }
}

-(void) clearList{
  self.head = NULL;
}



@end
