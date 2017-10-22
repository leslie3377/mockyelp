//
//  MapTableViewCell.m
//  yelp
//
//  Created by yu jianing on 2017/10/22.
//  Copyright © 2017年 yu jianing. All rights reserved.
//


#import "MapTableViewCell.h"
#import "YelpDataModel.h"
#import "YelpAnnotation.h"
@import MapKit;

@interface MapTableViewCell ()

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation MapTableViewCell

- (void)updateBasedOnDataModel:(YelpDataModel *)dataModel
{
    CLLocationCoordinate2D loc = CLLocationCoordinate2DMake(dataModel.latitude, dataModel.longitude);
    NSString *subtitle = [NSString stringWithFormat:@"%@ - %@",dataModel.categories,dataModel.displayAddress];
    YelpAnnotation *annotation = [[YelpAnnotation alloc] initWithCoordinate:loc title:dataModel.name subtitle:subtitle dataModel:dataModel];
    [self.mapView addAnnotation:annotation];
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(loc, 500, 500);
    MKCoordinateRegion adjustedRegion = [self.mapView regionThatFits:viewRegion];
    
    [self.mapView setRegion:adjustedRegion animated:YES];
    self.mapView.showsUserLocation = YES;
    [self.mapView setCenterCoordinate:loc];
}

/*- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}*/


@end
