//
//  M3UserDefaultsTokenBackingStore.m
//  ezcard
//
//  Created by Abel Duarte on 3/15/16.
//  Copyright © 2016 Abel Duarte. All rights reserved.
//

#import "M3UserDefaultsTokenBackingStore.h"

@interface M3UserDefaultsTokenBackingStore()
@property (nonatomic, retain) NSUserDefaults *defaults;
@end

@implementation M3UserDefaultsTokenBackingStore

+ (M3UserDefaultsTokenBackingStore *)backingStore
{
	return [[M3UserDefaultsTokenBackingStore alloc] init];
}

- (id)init
{
	self = [super init];
	if(self)
	{
		self.defaults = [NSUserDefaults standardUserDefaults];
	}
	return self;
}

- (void)persistTokenData:(NSData *)data forKey:(NSString *)key
{
	[self.defaults setObject:data forKey:key];
	[self.defaults synchronize];
}

- (NSData *)retrieveTokenDataForKey:(NSString *)key
{
	return [self.defaults objectForKey:key];
}

@end
