//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
   
    NSString *trailingPeriod = @".";
    NSString *favCheeseSentence = @"My favorite cheese is ";
    NSString *partialSentence = [favCheeseSentence stringByAppendingString:cheeseName];
    NSString *fullSentence = [partialSentence stringByAppendingString:trailingPeriod];
    return fullSentence;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSString *finalCheeseName;
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
        NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
        finalCheeseName = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    } else {
        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
        finalCheeseName = cheeseName;
        
    }

    return finalCheeseName;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *cheeseCountString;
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        cheeseCountString = @"1 cheese";
        
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */

        NSString *intermediateCheeseString = [NSString stringWithFormat:@"%ld cheeses", (long)cheeseCount];
        NSLog(@"%@",intermediateCheeseString);
        cheeseCountString = intermediateCheeseString;
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return cheeseCountString;
}

@end
