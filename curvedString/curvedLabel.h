//
//  curvedLabel.h
//  curvedString
//
//  Created by Wenzhong Zhang on 2014-11-16.
//  Copyright (c) 2014 Wenzhong Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface curvedLabel : UILabel

@property (nonatomic) UIFont *font;
@property (nonatomic) NSString *string;
@property (readonly, nonatomic) NSAttributedString *attributedString;
@property (nonatomic) CGFloat radius;
@property (nonatomic) BOOL showsGlyphBounds, showsLineMetrics, dimsSubstitutedGlyphs;

@end
