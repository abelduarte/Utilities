//
//  M3KeychainAccessBackingStore.m
//  ezcard
//
//  Created by Abel Duarte on 3/16/16.
//  Copyright © 2016 Abel Duarte. All rights reserved.
//

#import "M3KeychainAccessBackingStore.h"
#import "M3Keychain.h"

@interface M3KeychainAccessBackingStore()
@property (nonatomic, retain) M3Keychain *keychain;
@end

@implementation M3KeychainAccessBackingStore

+ (M3KeychainAccessBackingStore *)backingStore
{
	return [[M3KeychainAccessBackingStore alloc] init];
}

- (id)init
{
	self = [super init];
	if(self)
	{
		self.keychain = [[M3Keychain alloc] initWithIdentifier:nil];
	}
	return self;
}

- (void)persistTokenData:(NSData *)data forKey:(NSString *)key
{
	[self.keychain addKeychainItemWithUsername:key password:data error:NULL];
}

- (NSData *)retrieveTokenDataForKey:(NSString *)key
{
	M3KeychainItem *item = [self.keychain keychainItemWithUsername:key error:NULL];
	
	if(item)
		return item.password;
	
	return nil;
}


@end
