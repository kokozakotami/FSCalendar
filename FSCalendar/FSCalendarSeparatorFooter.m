//
//  FSCalendarSeparatorFooter.m
//  
//
//  Created by Сергей Сивагин on 30.09.2022.
//

#import "FSCalendarSeparatorFooter.h"
#import "FSCalendar.h"
#import "FSCalendarWeekdayView.h"
#import "FSCalendarExtensions.h"
#import "FSCalendarConstants.h"
#import "FSCalendarDynamicHeader.h"

@interface FSCalendarSeparatorFooter ()

@property (weak  , nonatomic) UIView  *contentView;
@property (weak  , nonatomic) UIView  *bottomBorder;

@end

@implementation FSCalendarSeparatorFooter

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UIView *view;
        
        view = [[UIView alloc] initWithFrame:CGRectZero];
        view.backgroundColor = [UIColor clearColor];
        [self addSubview:view];
        self.contentView = view;
        
        view = [[UIView alloc] initWithFrame:CGRectZero];
        view.backgroundColor = FSCalendarStandardLineColor;
        [_contentView addSubview:view];
        self.bottomBorder = view;
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    _contentView.frame = self.bounds;
    
    _bottomBorder.frame = CGRectMake(_calendar.appearance.footerSeparatorOffsetX, 0, _contentView.fs_width - _calendar.appearance.footerSeparatorOffsetX, 1.0);

    CGPoint titleHeaderOffset = self.calendar.appearance.headerTitleOffset;
}

#pragma mark - Properties

- (void)setCalendar:(FSCalendar *)calendar
{
    if (![_calendar isEqual:calendar]) {
        _calendar = calendar;
        [self configureAppearance];
    }
}

#pragma mark - Private methods

- (void)configureAppearance
{
    _bottomBorder.backgroundColor = self.calendar.appearance.footerSeparatorColor;
}

@end
