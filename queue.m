#import "queue.h"

@implementation queue

-(id) initWithString: (NSString*) input{
  self = [super init];
  if(self){
    self.first = NULL;
    self.last = NULL;
    self.temp = NULL;
  }
  return self;
}


// adds a new member to line
-(void) enqueue: (NSString*) itemGiven{
  node* itemAdded = [[node alloc] initWithString: itemGiven];
  if(self.first == NULL){
    self.first = itemAdded;
  }else{
    self.temp = self.first;
    while(self.temp.next != NULL){
      self.temp = self.temp.next;
    }
    self.temp.next= itemAdded;
  }

}

//removes current first member in line
-(NSString*) dequeue{
  node* itemDequeued = self.first;
  self.temp = self.first.next;
  self.first = NULL;
  self.first = self.temp;
  return itemDequeued.item;
}


// checks to see if line is empty
-(bool) isEmpty{
  if(self.first){
    return true;
  }else{
    return false;
  }
}

//display queue
-(void) displayQueue{
  self.temp = self.first;
  while(self.temp!= NULL){
    NSLog(@"%@",self.temp.item);
    self.temp = self.temp.next;
  }
}


@end
