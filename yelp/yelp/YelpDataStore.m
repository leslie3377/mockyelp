//
//  YelpDataStore.m
//  yelp
//
//  Created by yu jianing on 2017/10/22.
//  Copyright © 2017年 yu jianing. All rights reserved.
//

#import "YelpDataStore.h"

@implementation YelpDataStore

+ (YelpDataStore *)sharedInstance {
    static YelpDataStore *_sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[YelpDataStore alloc] init];
    });
    return _sharedInstance;
}
@end


