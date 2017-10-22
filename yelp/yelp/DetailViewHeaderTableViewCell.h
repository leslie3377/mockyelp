

#import <UIKit/UIKit.h>
@class YelpDataModel;

@interface DetailViewHeaderTableViewCell : UITableViewCell

- (void)updateBasedOnDataModel:(YelpDataModel *)dataModel;

@end
