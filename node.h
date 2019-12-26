#import <Foundation/Foundation.h>

@interface node: NSObject


@property NSString *item;
@property node *next;


-(id) initWithString: (NSString*) input;


@end
