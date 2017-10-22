//
//  YelpNetworking.h
//  yelp
//
//  Created by yu jianing on 2017/10/21.
//  Copyright © 2017年 yu jianing. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "YelpDataModel.h"

@import CoreLocation;

typedef void (^RestaurantCompletionBlock)(NSArray <YelpDataModel *>* dataModelArray);

@interface YelpNetworking : NSObject

+ (YelpNetworking *)sharedInstance;

- (void)fetchRestaurantsBasedOnLocation:(CLLocation *)location term:(NSString *)term completionBlock:(RestaurantCompletionBlock)completionBlock;

@end
