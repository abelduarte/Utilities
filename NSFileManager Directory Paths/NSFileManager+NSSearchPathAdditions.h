//
//  NSFileManager+NSSearchPathAdditions.h
//  Utilities
//
//  Created by Abel Duarte on 4/8/16.
//  Copyright © 2016 Abel Duarte. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (NSSearchPathAdditions)

- (NSString *)documentsPath;
- (NSString *)pathForDirectory:(NSSearchPathDirectory)directory;

@end
