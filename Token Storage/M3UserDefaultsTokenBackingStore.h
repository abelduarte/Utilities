//
//  M3UserDefaultsTokenBackingStore.h
//  ezcard
//
//  Created by Abel Duarte on 3/15/16.
//  Copyright © 2016 Abel Duarte. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "M3TokenStore.h"

@interface M3UserDefaultsTokenBackingStore : NSObject <M3TokenBackingStore>
{
}

+ (M3UserDefaultsTokenBackingStore *)backingStore;

@end
