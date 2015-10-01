//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"
#define DOUBLER 2 //couldnt figure out how to use typedef for integers

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    
    NSInteger m = [number integerValue]*DOUBLER;
    NSNumber *p= [NSNumber numberWithInteger:m];
    return p;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSInteger smallerNumber,largerNumber;
    if (number==otherNumber)
    {
    
        
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
    __block NSMutableArray *intermediateArray = [NSMutableArray array];
    
     for ( NSInteger n=smallerNumber;n <= largerNumber;n++)
        
        
    {
        NSLog(@"n is now: %ld", (long)n);
        [intermediateArray addObject:[NSNumber numberWithInt:n]];

    }
    
    return intermediateArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSArray *sortedArray;
    sortedArray = [arrayOfNumbers sortedArrayUsingSelector:@selector(compare:)];
    NSNumber *lowestNumber = [sortedArray objectAtIndex:(0)];
    NSInteger lowestInteger =[lowestNumber integerValue];
    
    return lowestInteger;
}

@end
