#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    NSInteger n = [ratingArray count];
    NSInteger resultCommand = 0;
    NSLog(@" Count array current %lu", (unsigned long)[ ratingArray count ]);
    if (( [ ratingArray count ] < 2 ) || ([ ratingArray isEqualToArray: @[]])) {
        return 0;
    }
    for (int i = 0; i <= n - 3; i ++ ) {
        for (int j = i + 1; j <= n - 2; j ++ ) {
            for (int k = j + 1; k <= n - 1; k ++ ) {

                    if ( [ ratingArray [i] intValue ] < [ ratingArray [j] intValue ] &&
                    [ ratingArray [j] intValue ] < [ ratingArray [k] intValue ] )
                    {
                        resultCommand += 1;
                    }
                    if ( [ ratingArray [i] intValue ] > [ ratingArray [j] intValue ] &&
                        [ ratingArray [j] intValue ] > [ ratingArray [k] intValue ] )
                    {
                        resultCommand += 1;
                    }
            }
        }
    }
    return resultCommand;
}
@end
