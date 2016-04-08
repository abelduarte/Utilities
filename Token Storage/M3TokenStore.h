//
//  TokenStore.h
//  ezcard
//
//  Created by Abel Duarte on 3/15/16.
//  Copyright © 2016 iMobile3 LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol M3TokenBackingStore;

@interface M3TokenStore : NSObject
{
}

+ (M3TokenStore *)userDefaultsStore;
+ (M3TokenStore *)keychainStore;

- (id)initWithTokenBackingStore:(id <M3TokenBackingStore>)backingStore;

- (void)storeToken:(id <NSCoding>)token forKey:(NSString *)key;
- (id)tokenForKey:(NSString *)key;

@end

@protocol M3TokenBackingStore <NSObject>
- (void)persistTokenData:(NSData *)data forKey:(NSString *)key;
- (NSData *)retrieveTokenDataForKey:(NSString *)key;
@end