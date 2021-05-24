#import "LevelOrderTraversal.h"

NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    NSMutableArray *leftNode;
    leftNode = [ NSMutableArray new ];
    NSMutableArray *rightNode;
    rightNode = [ NSMutableArray new ];
    NSInteger LevelNode = 0;
    NSMutableArray *res;
    res = [ NSMutableArray new ];
   
    for (  NSNumber *itr in tree ) {
        if ( [ itr isKindOfClass: NSArray.class ]) {
            
        } else if ( ![ itr isEqual : [NSNull null] ] ) {
            [ res addObject: [ NSArray arrayWithObject: itr ] ];
            if ( LevelNode == 2 ) {
                //      [ leftNode addObject: [ NSArray arrayWithObject: itr ] ];
                //      [ rightNode addObject: [ NSArray arrayWithObject: itr ] ];
                //      [ res addObject: [ NSArray arrayWithObject: itr ] ];
            }
        } else {
            LevelNode += 1;
        }
    }
    return res;
}
