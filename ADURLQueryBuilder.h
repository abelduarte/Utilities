//
//  ADURLQueryBuilder.h
//  Utilities
//
//  Created by Abel Duarte on 4/8/16.
//  Copyright © 2016 Abel Duarte. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ADURLQueryBuilder : NSObject
{
}

+ (instancetype)queryWithDictionary:(NSDictionary *)dictionary;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

- (void)setParameterValue:(NSString *)value forName:(NSString *)name;

- (NSString *)query;

@end
