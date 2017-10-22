

#import "YelpTableViewCell.h"
#import "YelpDataModel.h"
#import "UIImageView+AFNetworking.h"

@interface YelpTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *restaurantImage;
@property (weak, nonatomic) IBOutlet UIImageView *ratingImage;
@property (weak, nonatomic) IBOutlet UILabel *restaurantName;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UILabel *category;
@property (weak, nonatomic) IBOutlet UILabel *reviewLabel;
@property (weak, nonatomic) IBOutlet UILabel *costLabel;
@end


@implementation YelpTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.restaurantImage.layer.cornerRadius = 5.0f;
    self.restaurantImage.layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)updateBasedOnDataModel:(YelpDataModel *)dataModel
{
    self.restaurantName.text = dataModel.name;
    [self.restaurantImage setImageWithURL:[NSURL URLWithString:dataModel.imageUrl]];
    self.ratingImage.image = dataModel.ratingImage;
    self.reviewLabel.text = [NSString stringWithFormat:@"reviews %ld", dataModel.reviewCount];
    self.costLabel.text = dataModel.price;
    self.addressLabel.text = dataModel.displayAddress;
    self.category.text = dataModel.categories;

}

@end
