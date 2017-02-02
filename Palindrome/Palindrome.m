//
//  Palindrome.m
//  Palindrome
//
//  Created by Jonathan Edgar on 2/2/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import "Palindrome.h"

@implementation Palindrome

// Palindrome:/ˈpalənˌdrōm/ (noun) a word, phrase, or sequence that reads the same backward as forward, e.g., madam.


// to find the word backwards.
-(NSString *) reverseWord:(NSString *) word {
    
    NSString *wordReversed;
    
    int wordLength = [word length];
    NSString *undesired = @"(null)";
    NSString *desired   = @"";
    
    for (int i = wordLength-1; i >= 0; i--) {
        wordReversed = [NSString stringWithFormat:@"%@%c",wordReversed, [word characterAtIndex:i]];
    }
    wordReversed = [wordReversed stringByReplacingOccurrencesOfString:undesired withString:desired];
    return wordReversed;
}




// to find if the reverse word is equal to the normal word.
-(NSString *) isPalindrome:(NSString *) enteredWord {
    
    NSString *possiblePalindrome = [self reverseWord:enteredWord];
    
    NSString *isPalindrome;
    
    if ([possiblePalindrome isEqualToString: enteredWord]) {
        
        isPalindrome = @"Palindrome";
    }
    else {
        isPalindrome = @"Not a Palindrome";
    }
    
    return isPalindrome;

}

@end
