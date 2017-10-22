//
//  YelpDataStore.h
//  yelp
//
//  Created by yu jianing on 2017/10/22.
//  Copyright © 2017年 yu jianing. All rights reserved.
//

#import <Foundation/Foundation.h>
@import CoreLocation;
@class YelpDataModel;

@interface YelpDataStore : NSObject
@property (nonatomic, copy) NSArray <YelpDataModel *> *dataModels;
@property (nonatomic) CLLocation *userLocation;

+ (YelpDataStore *)sharedInstance;

@end

