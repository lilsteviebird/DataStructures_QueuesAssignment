//
//  main.m
//  Prog1
//
//  Created by sli19 on 9/9/18.
//  Copyright © 2018 sli19. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "linkedList.h"
#import "queue.h"
int main(int argc, const char * argv[]) {

    @autoreleasepool {

        //Code to test Josephes's problem
        int people;
        int skipped;

        int x;
        queue *aQueue = [[queue alloc] init];
        linkedList *aList = [[linkedList alloc] init];

        printf("Everything is running \n");

        printf("What do you want to do? \n");

        printf("1.) Play Josephes Problem \n 2.) Add an item to a queue \n 3.) Add an item to a linkedList \n 4.) Reverse your linkedList \n 5.) Diplay your list\n");
        printf("Enter your choice here");
        scanf("%i", &x);

        if(x == 1){
          printf("\nHow many people do you want to play this game\n");
          scanf("%i", &people);
          printf("\nHow many people do you want to skip between kills\n");
          scanf("%i", &skipped);

          for(int i = 0; i < people; i++){
            NSString* stringAdded = [NSString stringWithFormat:@"Person %i", i+1];
            [aQueue enqueue: stringAdded];
          }
          while(people > 1){
            for(int i = 0; i < skipped; i++){
              NSString* addPersonBack = [NSString stringWithFormat: @"%@", [aQueue dequeue]];
              [aQueue enqueue: addPersonBack];
            }
            [aQueue dequeue];
            people--;
          }
          NSLog(@"The person below is the last survivor");
          [aQueue displayQueue];

        }

    }
    return 0;
}
