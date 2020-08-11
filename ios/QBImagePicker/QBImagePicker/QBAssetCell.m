//
//  QBAssetCell.m
//  QBImagePicker
//
//  Created by Katsuma Tanaka on 2015/04/03.
//  Copyright (c) 2015 Katsuma Tanaka. All rights reserved.
//

#import "QBAssetCell.h"

@interface QBAssetCell ()

@property (weak, nonatomic) IBOutlet UIView *overlayView;

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation QBAssetCell

@synthesize titleLabel;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        // Initialization code
        NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"CelebretiesCollectionViewCell" owner:self options:nil];

        if ([arrayOfViews count] < 1) {
            return nil;
        }

        if (![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]]) {
            return nil;
        }

        self = [arrayOfViews objectAtIndex:0];

    }
    return self;
}

- (BOOL)isOverlayHidden
{
    return self.overlayView.hidden;
}

- (void)setLabelText:(NSString * )title
{
    // Set text of checkbox
    //[self.label setText:title];
    self.label.text = @"1";
}

- (void)setSelected:(BOOL) selected
{
    [super setSelected:selected];
    
    // Show/hide overlay view
    self.overlayView.hidden = !(selected && self.showsOverlayViewWhenSelected);
}

@end
