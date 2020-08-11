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

- (void)setLabelText:(NSString * )title
{
    // Set text of checkbox
    [self.label setText:title];
    self.label.text = @"TEST";
}

- (void)setSelected:(BOOL)selected
{
    [super setSelected:selected];
    
     self.label.text = @"TEST";
    
    // Show/hide overlay view
    /*self.overlayView.hidden = !(selected && self.showsOverlayViewWhenSelected);*/
}

@end
