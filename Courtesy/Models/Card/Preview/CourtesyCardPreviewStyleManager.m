//
//  CourtesyCardPreviewStyleManager.m
//  Courtesy
//
//  Created by Zheng on 5/3/16.
//  Copyright © 2016 82Flex. All rights reserved.
//

#import "CourtesyCardPreviewStyleManager.h"

@implementation CourtesyCardPreviewStyleManager

+ (id)sharedManager {
    static CourtesyCardPreviewStyleManager *sharedManager = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedManager = [[self alloc] init];
    });
    
    return sharedManager;
}

- (CourtesyCardPreviewStyleModel *)previewStyleWithType:(CourtesyCardPreviewStyleType)type {
    if (type == kCourtesyCardPreviewStyleDefault) {
        CourtesyCardPreviewStyleModel *previewStyle = [CourtesyCardPreviewStyleModel new];
        previewStyle.previewHeader = [UIImage imageNamed:@"default-preview-head"];
        previewStyle.previewBody = [UIImage imageNamed:@"default-preview-body"];
        previewStyle.previewFooter = [UIImage imageNamed:@"default-preview-footer"];
        previewStyle.previewFooterText = @"由礼记生成并发送 via Courtesy";
        previewStyle.previewFooterOrigin = CGPointMake(0, 0);
        previewStyle.previewFooterAttributes = @{};
        return previewStyle;
    }
    return nil;
}

@end
