//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
   
    NSMutableArray *intermediateArray = arrayToRemember;
    self.arrayToRemember=intermediateArray;
    
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
  //  NSMutableArray *intermediateArray = arrayToCopy;
    
    self.arrayToCopy = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
   //CGFloat *intermediateFloat = &floatToRemember;
    
    self.floatToRemember = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    
    return self.arrayToRemember;
}

- (NSMutableArray *) arrayYouShouldCopy {
    
    return self.arrayToCopy;
}

- (CGFloat) floatYouShouldRemember {
    
    return self.floatToRemember;
}

@end