//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    id favoriteDrink = characterDictionary[@"favorite drink"];
    NSString *favDrink ;
    if (favoriteDrink != nil && [favoriteDrink isKindOfClass:[NSString class]]) {
        NSLog(@"Favorite Movie: %@", favoriteDrink);    /* WORK HERE */
        favDrink = favoriteDrink;}
    return favDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
     NSArray *intermediateDrinksArray = [charactersArray valueForKeyPath:@"favorite drink"];
    return intermediateDrinksArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSMutableDictionary *tempDictionary;
    
    tempDictionary = [[NSMutableDictionary alloc]initWithDictionary:characterDictionary];
    [tempDictionary setObject:@"Things are only impossible until they're not!" forKey:@"quote"];
    
//    [tempDictionary enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
//        NSLog(@"In our dictionary, the key \"%@\" corresponds with %@", key, obj);
//    }];
    
    return tempDictionary;
}

@end
