//
//  DetailViewHeaderTableViewCell.h
//  yelp
//
//  Created by yu jianing on 2017/10/22.
//  Copyright © 2017年 yu jianing. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YelpDataModel;

@interface DetailViewHeaderTableViewCell : UITableViewCell

- (void)updateBasedOnDataModel:(YelpDataModel *)dataModel;

@end
