//
//  ADURLQueryBuilder.m
//  Utilities
//
//  Created by Abel Duarte on 4/8/16.
//  Copyright © 2016 Abel Duarte. All rights reserved.
//

#import "ADURLQueryBuilder.h"

@interface ADURLQueryBuilder()
@property (nonatomic, retain) NSMutableString *queryInternal;
@property (nonatomic, assign) BOOL isFirst;
@end

@implementation ADURLQueryBuilder

+ (instancetype)queryWithDictionary:(NSDictionary *)dictionary
{
    return [[ADURLQueryBuilder alloc] initWithDictionary:dictionary];
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self)
    {
        _isFirst = YES;
        _queryInternal = [NSMutableString string];
        
        if(dictionary)
        {
            for(id key in dictionary)
            {
                [self setParameterValue:[dictionary objectForKey:key] forName:key];
            }
        }
    }
    return self;
}

- (instancetype)init
{
    return [self initWithDictionary:nil];
}

- (void)setParameterValue:(NSString *)value forName:(NSString *)name
{
    if(_isFirst)
    {
        _isFirst = NO;
        [_queryInternal appendFormat:@"?%@=%@", name, value];
        return;
    }
    
    [_queryInternal appendFormat:@"&%@=%@", name, value];
}

- (NSString *)query
{
    return [_queryInternal copy];
}

@end
