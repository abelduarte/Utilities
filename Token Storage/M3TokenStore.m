//
//  TokenStore.m
//  ezcard
//
//  Created by Abel Duarte on 3/15/16.
//  Copyright © 2016 iMobile3 LLC. All rights reserved.
//

#import "M3TokenStore.h"
#import "M3UserDefaultsTokenBackingStore.h"
#import "M3KeychainAccessBackingStore.h"

@interface M3TokenStore()
@property (nonatomic, strong) id <M3TokenBackingStore> backingStore;
@end

@implementation M3TokenStore

+ (M3TokenStore *)userDefaultsStore
{
	return [[M3TokenStore alloc] initWithTokenBackingStore:[M3UserDefaultsTokenBackingStore backingStore]];
}

+ (M3TokenStore *)keychainStore
{
	return [[M3TokenStore alloc] initWithTokenBackingStore:[M3KeychainAccessBackingStore backingStore]];
}

- (id)initWithTokenBackingStore:(id<M3TokenBackingStore>)backingStore
{
	self = [super init];
	
	if(self)
	{
		self.backingStore = backingStore;
	}
	
	return self;
}

- (void)storeToken:(id <NSCoding>)token forKey:(NSString *)key
{
	NSData *tokenData = [NSKeyedArchiver archivedDataWithRootObject:token];
	
	if(tokenData)
		[self.backingStore persistTokenData:tokenData forKey:key];
}

- (id)tokenForKey:(NSString *)key
{
	NSData *data = [self.backingStore retrieveTokenDataForKey:key];
	
	if(data)
		return [NSKeyedUnarchiver unarchiveObjectWithData:data];
	
	return nil;
}

@end
