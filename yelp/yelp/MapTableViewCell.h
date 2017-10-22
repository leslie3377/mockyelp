

#import <UIKit/UIKit.h>
@class YelpDataModel;

@interface MapTableViewCell : UITableViewCell

- (void)updateBasedOnDataModel:(YelpDataModel *)dataModel;

@end
