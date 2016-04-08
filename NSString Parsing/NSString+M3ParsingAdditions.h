//
//  NSString+M3ParsingAdditions.h
//  KeyChain
//
//  Created by Abel Duarte on 3/16/16.
//  Copyright © 2016 Abel Duarte. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (M3ParsingAdditions)

- (NSString *)firstCharacter;
- (NSString *)lastCharacter;
- (NSString *)lowercaseCharactersInRange:(NSRange)range;
- (NSString *)uppercaseCharactersInRange:(NSRange)range;

@end
