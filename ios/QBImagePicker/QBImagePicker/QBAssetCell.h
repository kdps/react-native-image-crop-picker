//
//  QBAssetCell.h
//  QBImagePicker
//
//  Created by Katsuma Tanaka on 2015/04/03.
//  Copyright (c) 2015 Katsuma Tanaka. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QBVideoIndicatorView;

@interface QBAssetCell : UICollectionViewCell {
    UILabel *titleLabel;
}

- (void)setLabelText:(NSString * )title;
- (BOOL)isOverlayHidden;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet QBVideoIndicatorView *videoIndicatorView;

@property (nonatomic, retain) IBOutlet UILabel *titleLabel;

@property (nonatomic, assign) BOOL showsOverlayViewWhenSelected;

@end
