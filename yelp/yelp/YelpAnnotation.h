//
//  YelpAnnotation.h
//  yelp
//
//  Created by yu jianing on 2017/10/22.
//  Copyright © 2017年 yu jianing. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import "YelpDataModel.h"

@interface YelpAnnotation : NSObject <MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, readonly, copy) NSString *title;
@property (nonatomic, readonly, copy) NSString *subtitle;
@property (nonatomic, readonly) YelpDataModel *dataModel;
- (instancetype)initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title subtitle:(NSString *)subtitle dataModel:(YelpDataModel *)dataModel;

+ (NSArray <YelpAnnotation *>*)buildAnnotationArrayFromDataArray:(NSArray<YelpDataModel *> *)dataArray;

@end
