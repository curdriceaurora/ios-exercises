//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSInteger smallerNumber,largerNumber;
    if (number==otherNumber)
    {
        NSString *equalString = [NSString stringWithFormat:@"%ld",number];
        return equalString;
    }
    
    else if(number < otherNumber)
    {
        smallerNumber = number;
        largerNumber = otherNumber;
    }
    else
        {
            smallerNumber = otherNumber;
            largerNumber = number;
        }
    
    NSString *stringWithNumbersBetweenNumber = @"";
    for ( NSInteger n=smallerNumber;n <= largerNumber;n++)
    {
        NSLog(@"n is now: %ld", (long)n);
        NSString *integerAsString = [NSString stringWithFormat: @"%ld", n];
        stringWithNumbersBetweenNumber = [stringWithNumbersBetweenNumber stringByAppendingString:integerAsString];
        NSLog(@"n is now: %@",integerAsString);
        NSLog(@"String is now:%@",stringWithNumbersBetweenNumber);
    }
    
    return stringWithNumbersBetweenNumber;
}

@end
