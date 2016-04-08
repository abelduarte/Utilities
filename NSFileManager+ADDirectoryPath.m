//
//  NSFileManager+ADPathUtilities.m
//  Utilities
//
//  Created by Abel Duarte on 4/8/16.
//  Copyright © 2016 Abel Duarte. All rights reserved.
//

#import "NSFileManager+ADPathUtilities.h"

@implementation NSFileManager (ADDirectoryPath)

- (NSString *)documentsPath
{
    NSArray *paths = [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
    return [(NSURL *)[paths firstObject] path];
}

- (NSString *)pathForDirectory:(NSSearchPathDirectory)directory
{
    NSArray *paths = [[NSFileManager defaultManager] URLsForDirectory:directory inDomains:NSUserDomainMask];
    return [(NSURL *)[paths firstObject] path];
}

@end
