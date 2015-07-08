//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    NSArray *characterArray = [characterString componentsSeparatedByString:@";"];
    return characterArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSString *characterString = [characterArray componentsJoinedByString:@";"];

    return characterString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSMutableArray *myMutableCharacterArray = [NSMutableArray arrayWithArray:characterArray];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [myMutableCharacterArray sortUsingDescriptors:@[sortDescriptor]];
    return myMutableCharacterArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    NSMutableArray *myMutableCharacterArrayContainsWorf = [NSMutableArray arrayWithArray:characterArray];
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    [myMutableCharacterArrayContainsWorf filterUsingPredicate:containsWorf];
    
    if(myMutableCharacterArrayContainsWorf.count==0)
    {
        return NO;
    }
    else
        return YES;
    
}

@end
