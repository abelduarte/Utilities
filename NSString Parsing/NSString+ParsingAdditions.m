//
//  NSString+M3Additions.m
//  KeyChain
//
//  Created by Abel Duarte on 3/16/16.
//  Copyright © 2016 Abel Duarte. All rights reserved.
//

#import "NSString+ParsingAdditions.h"

@implementation NSString (ParsingAdditions)

- (NSString *)firstCharacter
{
	if(self.length)
	{
		return [self substringToIndex:1];
	}
	
	return nil;
}

- (NSString *)lastCharacter
{
	if(self.length)
	{
		NSUInteger length = self.length;
		return [self substringFromIndex:(length - 1)];
	}
	
	return nil;
}

- (NSString *)lowercaseCharactersInRange:(NSRange)range
{
	NSMutableString *mutableString = [NSMutableString string];
	
	for(int i = 0; i < self.length; i++)
	{
		NSString *character = [self substringWithRange:NSMakeRange(i, 1)];
		
		if(i >= range.location && i < (range.location + range.length))
		{
			[mutableString appendString:[character localizedLowercaseString]];
		}
		else
		{
			[mutableString appendString:character];
		}
	}
	
	return [NSString stringWithString:mutableString];
}

- (NSString *)uppercaseCharactersInRange:(NSRange)range
{
	NSMutableString *mutableString = [NSMutableString string];
	
	for(int i = 0; i < self.length; i++)
	{
		NSString *character = [self substringWithRange:NSMakeRange(i, 1)];
		
		if(i >= range.location && i < (range.location + range.length))
		{
			[mutableString appendString:[character localizedUppercaseString]];
		}
		else
		{
			[mutableString appendString:character];
		}
	}
	
	return [NSString stringWithString:mutableString];
}

@end
