#import "LevelOrderTraversal.h"

NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    NSMutableArray *tmp;
    tmp = [[ NSMutableArray alloc ] init ];
    NSMutableArray *res;
    res = [[ NSMutableArray alloc ] init ];
    for (  NSNumber *itr in tree ) {
        if ( [ itr isKindOfClass: NSArray.class ]) {
            
        } else if ( ![ itr isEqual : [NSNull null] ] ) {
            [ tmp removeAllObjects ];
            [ tmp addObject: itr ];
            [ res addObject: tmp];
        }
    }
    return res;
}
