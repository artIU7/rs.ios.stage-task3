#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    NSArray *manthName = [[ NSArray alloc] init ];
    if ( monthNumber > 12 || monthNumber < 1 ) {
        return nil;
    }
    NSCalendar *cal = [ NSCalendar currentCalendar];
    manthName = [ cal monthSymbols];
    return  manthName[monthNumber - 1];
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    NSDate *newDate = [ NSDate new];
    NSDateFormatter* dateFormatter = [NSDateFormatter new];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
    newDate = [dateFormatter dateFromString:date];
    if ( newDate == nil ) {
        return  0;
    }
    NSCalendar *cal = [ NSCalendar currentCalendar];
    NSUInteger day = [cal ordinalityOfUnit:NSCalendarUnitDay
                                    inUnit:NSCalendarUnitMonth
                                          forDate:newDate];
    return day;
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    NSString *dayName = [ NSString new];
    NSDateFormatter* dateFormatter = [NSDateFormatter new];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru_RU"];
    [ dateFormatter setDateFormat:@"E"];
    dayName = [dateFormatter stringFromDate:date];
    if ( dayName == nil ) {
        return  nil;
    }
    return [ dayName capitalizedString ];
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    NSCalendar *cal = [ NSCalendar currentCalendar];
    NSDate *now = [ NSDate now ];
    NSDateComponents *nowDate = [ cal components:NSCalendarUnitWeekOfYear fromDate:now];
    NSDateComponents *testdate = [ cal components:NSCalendarUnitWeekOfYear fromDate:date];
    if ( [ nowDate weekOfYear ] == [ testdate weekOfYear ] ) {
        return YES;
    } else {
        return NO;
    }
}
@end
