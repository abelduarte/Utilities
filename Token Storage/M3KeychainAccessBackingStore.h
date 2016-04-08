//
//  M3KeychainAccessBackingStore.h
//  ezcard
//
//  Created by Abel Duarte on 3/16/16.
//  Copyright © 2016 Abel Duarte. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "M3TokenStore.h"

@interface M3KeychainAccessBackingStore : NSObject <M3TokenBackingStore>

+ (M3KeychainAccessBackingStore *)backingStore;

- (void)persistTokenData:(NSData *)data forKey:(NSString *)key;
- (NSData *)retrieveTokenDataForKey:(NSString *)key;

@end
