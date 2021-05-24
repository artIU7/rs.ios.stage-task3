#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    NSMutableString *result;
    result = [ NSMutableString stringWithFormat:@""];
    NSMutableString *temp1 = [ string1 mutableCopy];
    NSMutableString *temp2 = [ string2 mutableCopy];
    if ( [ string1 isEqualToString: @"" ] || [ string2 isEqualToString: @"" ] ||
        ([ string1 isEqualToString: @"" ] && [ string2 isEqualToString: @"" ]))  {
        return @"";
    }
    while ((  [ temp1 length ]  != 0 && [ temp2 length ] != 0 ) && ( ![ temp1 isEqualToString: @""] && ![ temp2 isEqualToString : @""] ))
    {
        if ( [ temp1 characterAtIndex: 0 ] <= [  temp2 characterAtIndex: 0 ]  ) {
            NSLog(@" char :: %@", temp1);
            [ result appendString: [ NSString stringWithFormat:@"%c", [ temp1 characterAtIndex: 0 ] ]];
            temp1  = [ temp1 substringFromIndex:1];
        } else {
            NSLog(@" char :: %@", temp2);
            [ result appendString: [ NSString stringWithFormat:@"%c", [ temp2 characterAtIndex: 0 ] ]];
            temp2 = [ temp2 substringFromIndex:1];
        }
        NSLog(@" char :: %@", temp1);
        NSLog(@" char :: %@", temp2);
    }
    if ( [ temp1 length ] > 0 ) {
        [ result appendString: temp1 ];
    } else if ( [ temp2 length ] > 0 ) {
        [ result appendString: temp2 ];
    }
    return result;
}

@end
