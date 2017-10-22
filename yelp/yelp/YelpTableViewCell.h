

#import <UIKit/UIKit.h>
@class YelpDataModel;

@interface YelpTableViewCell : UITableViewCell

- (void)updateBasedOnDataModel:(YelpDataModel *)dataModel;


@end
