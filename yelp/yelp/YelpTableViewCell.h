//
//  YelpTableViewCell.h
//  yelp
//
//  Created by yu jianing on 2017/10/21.
//  Copyright © 2017年 yu jianing. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YelpDataModel;

@interface YelpTableViewCell : UITableViewCell

- (void)updateBasedOnDataModel:(YelpDataModel *)dataModel;


@end
